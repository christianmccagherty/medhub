class AddDescriptionToClinics < ActiveRecord::Migration[7.2]
  def change
    add_column :clinics, :description, :string
  end
end
