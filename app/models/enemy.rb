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

    def heal(n)
        self.current_hp += n
        self.hp_range
        self.save
    end

    def attack_land?(attack_roll)
        self.armor_rating > attack_roll 
    end

    def take_damage(damage_roll)
        self.current_hp -= damage_roll
        self.hp_range
        self.save
    end

    def roll_20
        rand(1..20) 
    end 

    def roll_melee_attack
        self.roll_20 + modifier(self.strength)
    end
    
    def roll_range_attack
        self.roll_20 + modifier(self.dexterity)
    end

    def  melee_damage(roll, dice)
        (roll * dice) + modifier(self.strength)
    end

    def  range_damage(roll, dice)
        (roll * dice) + modifier(self.dexterity)
    end

    def roll_initiative 
        self.update(initiative: (self.roll_20 + modifier(self.dexterity) ) ) 
    end

    def modifier(attribute)
        case  attribute 
            when 1 ; -5
            when 2..3 ; -4
            when 4..5 ; -3
            when 6..7 ; -2
            when 8..9 ; -1
            when 10..11 ; 0
            when 12..13 ; 1
            when 14..15 ; 2
            when 16..17 ; 3
            when 18..19 ; 4
            when 20..21 ; 5
            when 22..23 ; 6
            when 24..25 ; 7
            when 26..27 ; 8
            when 28..29 ; 9
            when 30 ; 10
        end
    end


end