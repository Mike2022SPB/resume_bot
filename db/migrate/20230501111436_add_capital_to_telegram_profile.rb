class AddCapitalToTelegramProfile < ActiveRecord::Migration[6.1]
  def change
    add_column :telegram_profiles, :capital, :decimal, :default => 1000.to_d, :null => false
  end
end
