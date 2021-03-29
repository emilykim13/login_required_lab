class User < ApplicationRecord
    belongs_to :role_type, ploymorphic: true
    # has_many :characters 
    # has_many :dungeon_masters

    # has_many :player, class_name "User", foreign_key: "dunegon_master_id"
    # belongs_to :dungeon_master, class_name "User"
end
