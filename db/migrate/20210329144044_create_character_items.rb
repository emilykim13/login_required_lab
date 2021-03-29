class CreateCharacterItems < ActiveRecord::Migration[6.1]
  def change
    create_table :character_items do |t|

      t.timestamps
    end
  end
end
