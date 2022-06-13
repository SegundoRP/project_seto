class AddPatientToTherapeuticHistories < ActiveRecord::Migration[6.1]
  def change
    add_reference :therapeutic_histories, :patient, null: false, foreign_key: true
  end
end
