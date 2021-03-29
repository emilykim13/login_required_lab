class Table < ApplicationRecord
    belongs_to :character
    belongs_to :dungeon_master
end
