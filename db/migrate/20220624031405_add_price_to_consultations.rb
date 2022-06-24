class AddPriceToConsultations < ActiveRecord::Migration[6.1]
  def change
    add_column :consultations, :price, :float
  end
end
