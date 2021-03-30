class EnemiesController < ApplicationController
    before_action :find_enemy, only [:show, :edit, :update]

    def index
        @enemies = Enemy.all
    end

    def new
        @enemy = Enemy.new
    end

    def create 
       @enemy = Enemy.create(enemy_params)
       @enemy.save
       redirect_to @enemy
    end

    def update
        @enemy.update(enemy_params)
    end


    private 

        def find_enemy
            @enemy = Enemy.find(params[:id])
        end

        def enemy_params
            params.require(:enemy).permit(:strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :armor_rating, :challenge_rating, :max_hp, :current_hp, :experience_value)
        end

end
