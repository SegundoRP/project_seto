class CreateConsultations < ActiveRecord::Migration[6.1]
  def change
    create_table :consultations do |t|
      t.datetime :date
      t.integer :status
      t.text :summary
      t.string :reason_consultation
      t.integer :type_consultation
      t.integer :price
      t.references :doctor, null: false, foreign_key: true
      t.references :patient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
