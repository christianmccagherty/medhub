class RemoveSpecialityFromDoctors < ActiveRecord::Migration[7.1]
  def change
    remove_column :doctors, :speciality, :string
  end
end
