class Enemy < ApplicationRecord
    belongs_to :user
    belongs_to :campaign
    # has_many :enemy_items
    # has_many :items, through: :enemy_items
    has_many :encounters
    has_many :characters, through: :encounters
end