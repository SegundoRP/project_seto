class AddPriceToTypeOfServices < ActiveRecord::Migration[6.1]
  def change
    add_column :type_of_services, :price, :float
  end
end
