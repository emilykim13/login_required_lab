class CharacterItem < ApplicationRecord
    belongs_to :item
    belongs_to :character
    belongs_to :enemy
end
