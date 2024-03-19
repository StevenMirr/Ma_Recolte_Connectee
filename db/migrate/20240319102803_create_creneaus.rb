class CreateCreneaus < ActiveRecord::Migration[7.1]
  def change
    create_table :creneaus do |t|
      t.date :date
      t.time :start_time
      t.time :end_time
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
