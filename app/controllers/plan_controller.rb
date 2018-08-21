class PlanController < ApplicationController

    def index
        
    @stages = current_user.stages
    @deal_time = [ ]
    @stages.each do | stage |
        stage_time = stage.active_days / stage.probability_deal_closes
        @deal_time.push(stage_time)
    end
    
    @deal_time.sum
        render("plan_templates/show.html.erb")
    end    
end