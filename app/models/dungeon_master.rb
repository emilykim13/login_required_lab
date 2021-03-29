class DungeonMaster < ApplicationRecord
    belongs_to :user
    has_many :tables
    has_many :characters, through: :tables
    has_many :enemies
end
