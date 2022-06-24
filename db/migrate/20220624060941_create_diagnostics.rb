class CreateDiagnostics < ActiveRecord::Migration[6.1]
  def change
    create_table :diagnostics do |t|
      t.text :description
      t.references :patient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
