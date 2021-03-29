class CreateArmors < ActiveRecord::Migration[6.1]
  def change
    create_table :armors do |t|
      t.string :name
      t.string :type
      t.string :cost
      t.integer :rating
      t.boolean :modifier
      t.integer :strength_requirment
      t.string :stealth
      t.float :weight

      t.timestamps
    end
  end
end
