class AddPriceColumnToMeals < ActiveRecord::Migration[7.0]
  def add
    add_column :price do |t|
      t.string :price, default: "Price"
    end
  end
end
