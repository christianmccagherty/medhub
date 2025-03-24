class AddLanguageToProfiles < ActiveRecord::Migration[7.1]
  def change
    add_column :profiles, :language, :string
  end
end
