class CreateEnemies < ActiveRecord::Migration[6.1]
  def change
    create_table :enemies do |t|
      t.integer :strength
      t.integer :dexterity
      t.integer :constitution
      t.integer :intelligence
      t.integer :wisdom
      t.integer :charisma
      t.integer :armor_rating
      # t.integer :initiative
      t.integer :challenge_rating
      t.integer :speed
      t.integer :max_hp
      t.integer :current_hp
      t.integer :temporary_hp
      t.integer :hit_dice
      t.string :race #collection_select? dropbox if more tha one race
      t.string :profession #collection_select?
      t.integer :experience_value

      t.timestamps
    end
  end
end
