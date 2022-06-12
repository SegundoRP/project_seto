class CreateDoctors < ActiveRecord::Migration[6.1]
  def change
    create_table :doctors do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :profession
      t.string :specialty
      t.integer :college_number
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
