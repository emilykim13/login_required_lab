class EncountersController < ApplicationController

    def throw_hands
        # character vs enemy
        # broken method bc response doesnt exist yet
        @character = @character.find(params[:id])
        @enemy = @enemy.find(params[:id])
        if response == "attack"
            roll = rand(0..20)
            if roll > @enemy.armor_rating
                @enemy.take_dmg(@character.strength)
            elsif roll < @enemy.armor_rating
                # @character.take_dmg(@enemy.strength)
                "ya missed"
            elsif roll = @enemy.armor_rating
                @character.take_dmg(@enemy.strength/2).to_f
                @enemy.take_dmg(@enemy.strength/2).to_f
            end
            #went to bread -- left off here
            #would have to add a redirect_to encounter
        elsif response == "flee"
            roll = rand(0..20)
            if roll > @enemy.armor_rating
                @character.take_dmg(@character.strength)
            elsif roll < @enemy.armor_rating
              @character.take_dmg(@enemy.strength)
            elsif roll = @enemy.armor_rating
                @character.take_dmg(@enemy.strength/2).to_f
                @enemy.take_dmg(@enemy.strength/2).to_f
            end
        end
    end

end
