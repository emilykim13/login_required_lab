class Character < ApplicationRecord
    belongs_to :user
    belongs_to :campaign

    has_many :character_items
    has_many :items, through: :character_items

    has_many :encounters
    has_many :enemies, through: :encounters

    @critical = 20
    validates :name, presence: true 

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
        roll_20  modifier(self.strength)
    end
    
    def roll_range_attack
        roll_20 + modifier(self.dexterity)
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

    def advantage 
        rolls = [ self.roll_20 , self.roll_20 ]
        rolls.max
    end

    def disadvantage 
        rolls = [ self.roll_20 , self.roll_20 ]
        rolls.min
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

    #strength stats add and subtract; works
    def strength_range
        self.strength = self.strength.clamp(0, 20)
    end
    
    def strength_up(n)
        self.strength += n 
        self.strength_range
        self.save
    end

    def strength_down(n)
        self.strength -= n 
        self.strength_range
        self.save
    end

#dexterity stats add and subtract; works
    def dexterity_range
        self.dexterity = self.dexterity.clamp(0, 20)
    end
    
    def dexterity_up(n)
        self.dexterity += n 
        self.dexterity_range
        self.save
    end

    def dexterity_down(n)
        self.dexterity -= n 
        self.dexterity_range
        self.save
    end

# constitution stat add and subtract; works
    def constitution_range
        self.constitution = self.constitution.clamp(0, 20)
    end

    def constitution_up(n)
        self.constitution += n 
        self.constitution_range
        self.save
    end

    def constitution_down(n)
        self.constitution -= n 
        self.constitution_range
        self.save
    end

# intelligence stat add and subtract; works
    def intelligence_range
        self.intelligence = self.intelligence.clamp(0, 20)
    end

    def intelligence_up(n)
        self.intelligence += n 
        self.intelligence_range
        self.save
    end

    def intelligence_down(n)
        self.intelligence -= n 
        self.intelligence_range
        self.save
    end
# wisdom stat add and subtract; works
    def wisdom_range
        self.wisdom = self.wisdom.clamp(0, 20)
    end

    def wisdom_up(n)
        self.wisdom += n 
        self.wisdom_range
        self.save
    end

    def wisdom_down(n)
        self.wisdom -= n 
        self.wisdom_range
        self.save
    end
# charisma stat add and subtract
    def charisma_range
        self.charisma = self.charisma.clamp(0, 20)
    end

    def charisma_up(n)
        self.charisma += n 
        self.charisma_range
        self.save
    end

    def charisma_down(n)
        self.charisma -= n 
        self.charisma_range
        self.save
    end

# damage stats add and subtract
    def damage_range
        self.damage = self.damage.clamp(4, 100)
    end

    def damage_up(n)
        self.damage += n 
        self.damage_range
        self.save
    end

    def damage_down(n)
        self.damage -= n 
        self.damage_range
        self.save
    end

# items
    def items_attributes=(item_attribute_hash)
    item_attribute_hash.each do |index, attributes|
      if attributes && attributes["name"].blank?
        item = Item.find_or_create_by(name: item_attribute_hash["name"])
        self.items << item
      end
    end
  end
    
end
