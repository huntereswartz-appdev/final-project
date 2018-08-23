class PlanController < ApplicationController

    def index
    
        @stages = current_user.stages
        @goals = current_user.goals
    
        if @stages.present? and @goals.present?
           
            @deal_time = [ ]
            @stages.each do | stage |
                stage_time = stage.active_days / stage.probability_deal_closes
                @deal_time.push(stage_time)
            end
        
            @deal_days = @deal_time.sum.round(1)
            
            @current_goal = Goal.find(current_user.goals.last.id)
            @end_date = @current_goal.period_end
            @current_date = @current_goal.created_at
            @time = (@end_date.to_date - @current_date.to_date).to_i / 7
    
            @remaining_deals = (@time * 5 / @deal_days).round(1)
            @remaining_deal_value = @remaining_deals * @current_goal.average_deal_size
            
          
            @pipeline_value = [ ]
            @stages.each do | stage |
                    stage_value = stage.number_of_deals * stage.probability_deal_closes * @current_goal.average_deal_size
                    @pipeline_value.push(stage_value)
                end
            
            @output_pipeline = @pipeline_value.sum
            
            @percentage_of_goal = (@output_pipeline + @remaining_deal_value + @current_goal.period_closed_deal_value ) / @current_goal.sales_goal
    
        
            render("plan_templates/show.html.erb")
        else    
            render("plan_templates/start.html.erb")
        end
end
end