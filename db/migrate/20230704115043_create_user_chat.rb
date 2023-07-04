class CreateUserChat < ActiveRecord::Migration[6.1]
  def change
    create_table :user_chats do |u|
      u.belongs_to  :chat, foreign_key: true
      u.belongs_to  :profile, foreign_key: true

      u.timestamps
    end
  end
end
