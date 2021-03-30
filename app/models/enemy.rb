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
    
    # t.integer :strength
    # t.integer :dexterity
    # t.integer :constitution
    # t.integer :intelligence
    # t.integer :wisdom
    # t.integer :charisma
    # t.integer :armor_rating
    # t.integer :challenge_rating
    # t.integer :max_hp
    # t.integer :current_hp
    # t.integer :experience_value


end