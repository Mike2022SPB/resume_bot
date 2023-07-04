class CreateProfileSeedChatAndUserChat < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.string :name
      t.integer :age
      t.boolean :active
      
      t.timestamps
    end
  end
end
