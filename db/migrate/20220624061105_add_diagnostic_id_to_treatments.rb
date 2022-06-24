class AddDiagnosticIdToTreatments < ActiveRecord::Migration[6.1]
  def change
    add_reference :treatments, :diagnostic, null: false, foreign_key: true
  end
end
