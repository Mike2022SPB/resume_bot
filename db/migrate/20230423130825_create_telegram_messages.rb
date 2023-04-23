class CreateTelegramMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :telegram_messages do |t|
      t.references :telegram_profile, index: true
      t.text :message

      t.timestamps
    end
  end
end
