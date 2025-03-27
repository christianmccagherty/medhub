class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :set_questions_and_question
  def after_sign_in_path_for(*)
    if current_user.profile.nil?
      new_profile_path
    else
      root_path
    end
  end

  private

  def set_questions_and_question
    @questions = current_user.questions
    @question = Question.new
  end

end
