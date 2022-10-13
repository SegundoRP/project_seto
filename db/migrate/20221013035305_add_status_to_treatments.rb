class AddStatusToTreatments < ActiveRecord::Migration[6.1]
  def change
    add_column :treatments, :status, :string
  end
end
