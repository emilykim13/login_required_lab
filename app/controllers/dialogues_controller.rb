class DialoguesController < ApplicationController
# experimental controller
    def initialize #how can we get sentence attribute to shovel into dialogue attribute for campaign?
        @campaign = Campaign.find(params[:id])
        @campaign.dialogue << self.sentence
    end

end
