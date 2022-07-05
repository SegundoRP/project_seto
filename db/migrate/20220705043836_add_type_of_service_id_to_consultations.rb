class AddTypeOfServiceIdToConsultations < ActiveRecord::Migration[6.1]
  def change
    add_reference :consultations, :type_of_service, null: false, foreign_key: true
  end
end
