class CreateChat < ActiveRecord::Migration[6.1]
  def change
    create_table :chats do |c|
      c.string :title

      c.timestamps
    end
  end
end
