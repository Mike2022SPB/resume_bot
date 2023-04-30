class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.decimal :capital
      t.date :date
      t.integer :step
      t.references :telegram_profile, index: true
      t.string :ticker, array: true, default: []

      t.timestamps
    end
  end
end
