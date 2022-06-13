class AddAboutToTreatment < ActiveRecord::Migration[6.1]
  def change
    add_column :treatments, :about, :text
  end
end
