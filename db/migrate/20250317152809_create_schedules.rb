class CreateSchedules < ActiveRecord::Migration[7.1]
  def change
    create_table :schedules do |t|
      t.references :doctor, null: false, foreign_key: true
      t.string :monday_start_time
      t.string :monday_end_time
      t.string :tuesday_start_time
      t.string :tuesday_end_time
      t.string :wednesday_start_time
      t.string :wednesday_end_time
      t.string :thursday_start_time
      t.string :thursday_end_time
      t.string :friday_start_time
      t.string :friday_end_time

      t.timestamps
    end
  end
end
