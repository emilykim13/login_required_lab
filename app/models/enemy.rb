class Enemy < Character
    belongs_to :dungeon_master
    has_many :encounters
    has_many :characters, through: :encounters
end