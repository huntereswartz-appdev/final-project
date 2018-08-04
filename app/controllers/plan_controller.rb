class PlanController < ApplicationController

    def index
        # @stage = Stage.find(params.fetch("id_to_display"))

        render("plan_templates/show.html.erb")
    end    
end