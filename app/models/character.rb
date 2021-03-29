class Character < ApplicationRecord
    belongs_to :user
    belongs_to :campaign
    # has_many :character_items
    # has_many :items, through: :character_items
    has_many :encounters
    has_many :enemies, through: :encounters
end
