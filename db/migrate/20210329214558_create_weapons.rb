class CreateWeapons < ActiveRecord::Migration[6.1]
  def change
    create_table :weapons do |t|
      t.string :name
      t.string :type
      t.string :cost
      t.string :damage
      t.string :damage_type
      t.integer :strength_requirment
      t.string :properties
      t.float :weight

      t.timestamps
    end
  end
end
