class AddDescriptionToDoctors < ActiveRecord::Migration[7.2]
  def change
    add_column :doctors, :description, :text
  end
end
