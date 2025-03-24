class RenameLangaugesToLanguages < ActiveRecord::Migration[7.1]
  def change
    rename_table :langauges, :languages
    rename_table :doctor_langauges, :doctor_languages
    rename_column :doctor_languages, :langauge_id, :language_id
  end
end
