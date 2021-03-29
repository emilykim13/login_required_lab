class Enemy < Character
    belongs_to :user
    belonts_to :table
    # has_many :enemy_items
    # has_many :items, through: :enemy_items
    has_many :encounters
    has_many :characters, through: :encounters
end