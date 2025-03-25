class AddEmbeddingToDoctors < ActiveRecord::Migration[7.2]
  def change
    add_column :doctors, :embedding, :vector, limit: 1536
  end
end
