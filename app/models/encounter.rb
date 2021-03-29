class Encounter < ApplicationRecord
    belongs_to :character
    belongs_to :enemy
end
