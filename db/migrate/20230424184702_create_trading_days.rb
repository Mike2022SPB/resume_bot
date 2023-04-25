class CreateTradingDays < ActiveRecord::Migration[6.1]
  def change
    create_table :trading_days do |t|
      t.date :date
      t.decimal :open, :precision => 10, :scale => 2
      t.decimal :close, :precision => 10, :scale => 2
      t.decimal :adj_close, :precision => 10, :scale => 2
      t.references :stock, index: true

      t.timestamps
    end
  end
end
