class CharactersController < ApplicationController
    before_action :find_character, only: [:show, :edit, :update, :destroy]
    before_action :inventory, only: [:show]
    before_action :instances, only: [:show, :edit, :update, :destroy]

    def index
        @characters = Character.all
    end

    def show
        @character = Character.find(params[:id])
    end


    def new
        @character = Character.new
    end

    def create 
       @character = Character.create(character_params)
       @character.save
        # byebug
       redirect_to @character
    end

    # def update
    #     @character.update(character_params)
    #     redirect_to @character
    # end

    def update
        @character = Character.create(character_params)
        if @character.valid?
            redirect_to @character
        else
            render :edit
        end
    end

    def destroy
        @character.delete 
        redirect_to characters_path
    end

# item code


    def inventory # method that returns an array of items
        @inventory = @character.item_ids.map {|one| Item.find(one)}
    end

    def consume_item
    end

    private 

    def instances
        @weapons = Item.all.select {|item| item.damage_dice >= 4}
        @shields = Item.all.select {|item| item.armor >= 11}
    end


    def find_character
        @character = Character.find(params[:id])
    end

    def character_params
        params.require(:character).permit(:name, :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :armor_rating, :challenge_rating, :max_hp, :current_hp, :experience_value, :user_id, :campaign_id, :item_ids => [], items_attributes: [:name, :cost, :weight, :damage_dice, :roll, :armor])
    end


end
