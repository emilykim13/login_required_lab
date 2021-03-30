class Encounter < ApplicationRecord
    belongs_to :character
    belongs_to :enemy

    def roll_20
        rand(1..20)
    end

    def participants 
        [self.character, self.enemy]
    end

    def roll_initiatives
        self.participants.each{|p| p.roll_initiative}
    end

    def order_by_initiatives
        self.participants.sort{|p| p.initiative}
    end

    
        
end

#can be conversational or combative