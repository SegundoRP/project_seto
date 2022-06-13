class CreateTreatments < ActiveRecord::Migration[6.1]
  def change
    create_table :treatments do |t|
      t.interval :duration
      t.date :start_time
      t.references :consultation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
