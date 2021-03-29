class DungeonMaster < ApplicationRecord
    has_many :users, as: :role_type
    has_many :tables
    has_many :characters, through: :tables
    has_many :enemies
    has_many :encounters, through: :enemies
end
