class CharactersController < ApplicationController
    before_action :find_character, only: [:show, :edit, :update, :destroy]

    def index
        @characters = Character.all
    end

    def new
        @character = Character.new
    end

    def create 
       @character = Character.create(character_params)
       @character.save
       redirect_to @character
    end

    def update
        @character.update(character_params)
        redirect_to @character
    end

    def destroy
        @character.delete 
        redirect_to '/'
    end

    private 

        def find_character
            @character = Character.find(params[:id])
        end

        def character_params
            params.require(:character).permit(:name, :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :armor_rating, :challenge_rating, :max_hp, :current_hp, :experience_value, :user_id, :campaign_id)
        end

end
