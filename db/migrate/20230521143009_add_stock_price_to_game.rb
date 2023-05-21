class AddStockPriceToGame < ActiveRecord::Migration[6.1]
  def change
    add_column :games, :stock_price, :decimal, :default => 0.to_d, :null => false
  end
end
