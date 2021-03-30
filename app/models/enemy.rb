class Enemy < ApplicationRecord
    belongs_to :user
    belongs_to :campaign
    # has_many :enemy_items
    # has_many :items, through: :enemy_items
    has_many :encounters
    has_many :characters, through: :encounters


    def alive? 
        self.current_hp > 0
    end

    def hp_range
        self.current_hp = self.current_hp.clamp(0, self.max_hp)
    end

    def take_dmg(n)
        self.current_hp -= n
        self.hp_range
        self.save
    end

    def heal(n)
        self.current_hp += n
        self.hp_range
        self.save
    end


end