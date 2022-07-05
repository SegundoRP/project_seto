class CreateTypeOfServices < ActiveRecord::Migration[6.1]
  def change
    create_table :type_of_services do |t|
      t.string :name_of_service

      t.timestamps
    end
  end
end
