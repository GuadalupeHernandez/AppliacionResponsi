class AddPriceToCourse < ActiveRecord::Migration[5.1]
  def change
    add_column :courses, :price, :decimal
  end
end
