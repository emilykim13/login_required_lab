class EnemiesController < ApplicationController
    before_action :find_enemy, only: [:show, :edit, :update, :destroy]

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
        redirect_to @enemy
    end

    def destroy
        @enemy.delete 
        redirect_to '/'
    end

    private 

        def find_enemy
            @enemy = Enemy.find(params[:id])
        end

        def enemy_params
            params.require(:enemy).permit(:name, :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :armor_rating, :challenge_rating, :max_hp, :current_hp, :experience_value, :user_id, :campaign_id)
        end

end
