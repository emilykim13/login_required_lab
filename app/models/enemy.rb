class Enemy < ApplicationRecord
    belongs_to :dungeon_master
    has_many :character_items
    has_many :items, through: :character_items
    has_many :encounters
    has_many :characters, through: :encounters
end
