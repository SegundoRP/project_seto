class RemovePriceFromConsultations < ActiveRecord::Migration[6.1]
  def change
    remove_column :consultations, :price, :float
  end
end
