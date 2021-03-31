class SessionsController < ApplicationController
  # before_action :weapon, only: [:new]
    def new
    end

    def create
      user = User.find_by(username: params[:user][:username])
      user = user.try(:authenticate, params[:user][:password])
      return redirect_to(controller: 'sessions', action: 'new') unless user
      session[:user_id] = user.id
      @user = user
      redirect_to controller: 'welcome', action: 'home'
    end

    def destroy
      session.delete :user_id
      redirect_to '/'
    end


    # def equip_weapon
    # end
    
    # def equip_shield
    # end

    # def weapon
    #   @character = Character.find(params[:character_id])
    #   @weapon = Item.find(params[:character][:item_ids])
    #   # session[:weapon] = 
    #   redirect_to character_path(@character)
    # end

    # def shield
    #   @character = Character.find(params[:character_id])
    #   @shield = Item.find(params[:character][:item_ids])
    #   # session[:shield] = @shield
    #   redirect_to character_path(@character)
    # end
end
