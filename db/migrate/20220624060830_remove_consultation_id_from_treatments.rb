class RemoveConsultationIdFromTreatments < ActiveRecord::Migration[6.1]
  def change
    remove_reference :treatments, :consultation, null: false, foreign_key: true
  end
end
