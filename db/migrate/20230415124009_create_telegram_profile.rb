class CreateTelegramProfile < ActiveRecord::Migration[6.1]
  def change
    create_table :telegram_profiles do |t|
      t.string :name
      t.string :lastname
      t.string :username
      t.bigint :telegram_id
      t.string :step
      
      t.timestamps
    end
  end
end
