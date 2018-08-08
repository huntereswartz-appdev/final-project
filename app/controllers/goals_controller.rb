class GoalsController < ApplicationController
  def index
    @goals = Goal.all

    render("goal_templates/index.html.erb")
  end

  def show
    @goal = Goal.find(params.fetch("id_to_display"))

    render("goal_templates/show.html.erb")
  end

  def new_form
    render("goal_templates/new_form.html.erb")
  end

  def create_row
    @goal = Goal.new

    @goal.user_id = params.fetch("user_id")
    @goal.sales_goal = params.fetch("sales_goal")
    @goal.sales_goal_period = params.fetch("sales_goal_period")
    @goal.period_end = params.fetch("period_end")
    @goal.average_deal_size = params.fetch("average_deal_size")
    @goal.period_closed_deal_value = params.fetch("period_closed_deal_value")
    @goal.pipeline_stages = params.fetch("pipeline_stages")

    if @goal.valid?
      @goal.save

      redirect_to("/goals", :notice => "Goal created successfully.")
    else
      render("goal_templates/new_form.html.erb")
    end
  end

  def edit_form
    @goal = Goal.find(params.fetch("prefill_with_id"))

    render("goal_templates/edit_form.html.erb")
  end

  def update_row
    @goal = Goal.find(params.fetch("id_to_modify"))

    @goal.user_id = params.fetch("user_id")
    @goal.sales_goal = params.fetch("sales_goal")
    @goal.sales_goal_period = params.fetch("sales_goal_period")
    @goal.period_end = params.fetch("period_end")
    @goal.average_deal_size = params.fetch("average_deal_size")
    @goal.period_closed_deal_value = params.fetch("period_closed_deal_value")
    @goal.pipeline_stages = params.fetch("pipeline_stages")

    if @goal.valid?
      @goal.save

      redirect_to("/goals/#{@goal.id}", :notice => "Goal updated successfully.")
    else
      render("goal_templates/edit_form.html.erb")
    end
  end

  def destroy_row
    @goal = Goal.find(params.fetch("id_to_remove"))

    @goal.destroy

    redirect_to("/goals", :notice => "Goal deleted successfully.")
  end
end
