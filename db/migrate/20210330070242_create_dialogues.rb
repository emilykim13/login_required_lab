class CreateDialogues < ActiveRecord::Migration[6.1]
  def change
# experimental table
    create_table :dialogues do |t|
      t.integer :campaign_id
      t.string :sentence

      t.timestamps
    end
  end
end
