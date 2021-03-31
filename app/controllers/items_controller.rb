class ItemsController < ApplicationController
end



# <h3> Select your items </h3>
# <%= f.collection_check_boxes :item_ids, Item.all.select {|item| item.damage_dice >= 4}, :id, :name %><br><br>
# <h3> Select your armor </h3>
# <%= f.collection_select :item_ids, Item.all.select {|item| item.armor >= 11}, :id, :name %><br><br>