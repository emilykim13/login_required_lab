class CampaignsController < ApplicationController
    
    def initialize #how can we get sentence attribute to shovel into dialogue attribute for campaign?
        @campaign = Campaign.find(params[:id])
        @dialogue = Dialogue.new(params)
        @campaign.dialogue << @dialogue.sentence
    end

    def game_over 

    end
    
end
