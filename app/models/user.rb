class User < ApplicationRecord
    has_many :characters 
    has_many :dungeon_masters
end
