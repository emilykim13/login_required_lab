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
      t.integer :challenge_rating
      t.integer :max_hp
      t.integer :current_hp
      t.integer :experience_value

      t.timestamps
    end
  end
end
