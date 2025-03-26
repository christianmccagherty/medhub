class ChatbotJob < ApplicationJob
  queue_as :default

  def perform(question)
    @question = question
    chatgpt_response = client.chat(
      parameters: {
        model: "gpt-4o-mini",
        messages: questions_formatted_for_openai
      }
    )
    new_content = chatgpt_response["choices"][0]["message"]["content"]
    question.update(ai_answer: new_content)
    Turbo::StreamsChannel.broadcast_update_to(
      "question_#{@question.id}",
      target: "question_#{@question.id}",
      partial: "questions/question", locals: { question: question })
  end

  private

  def client
    @client ||= OpenAI::Client.new
  end

  def questions_formatted_for_openai
    questions = @question.user.questions
    results = []

    system_text = "You are an assistant for a medical appointment booking website. 1. Do not provide medical
      advice to the user, you only assist in finding appropriate doctors. 2. If you don't know the
      answer, you can say I don't know. If you don't have any doctors at the end of this message, say we don't
      have any relevant doctors. Here are the doctors you should use to answer the user's questions: "

    nearest_doctors.each do |doctor|
      system_text += "** DOCTOR#{doctor.id}: name: #{doctor.full_name}, specialty: #{doctor.specialties.pluck(:name).join(" ")},
        lanuage: #{doctor.languages.pluck(:name).join(" ")}, address: #{doctor.address}, clinic: #{doctor.clinic}"
    end

    p system_text

    results << { role: "system", content: system_text }
    questions.each do |question|
      results << { role: "user", content: question.user_question }
      results << { role: "assistant", content: question.ai_answer || "" }
    end
    return results
  end

  def nearest_doctors
    response = client.embeddings(
      parameters: {
        model: 'text-embedding-3-small',
        input: @question.user_question
      }
    )
    question_embedding = response['data'][0]['embedding']
    Doctor.nearest_neighbors(
      :embedding, question_embedding,
      distance: "euclidean"
    )
  end
end
