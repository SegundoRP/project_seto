class CreateTherapeuticsHistories < ActiveRecord::Migration[6.1]
  def change
    create_table :therapeutics_histories do |t|
      t.boolean :first_time_attention
      t.string :previous_diagnostic
      t.text :events_in_life
      t.text :previous_treatment
      t.text :familiar_antecedent

      t.timestamps
    end
  end
end
