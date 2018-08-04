class StagesController < ApplicationController
  def index
    @stages = Stage.all

    render("stage_templates/index.html.erb")
  end

  def show
    @stage = Stage.find(params.fetch("id_to_display"))

    render("stage_templates/show.html.erb")
  end

  def new_form
    render("stage_templates/new_form.html.erb")
  end

  def create_row
    @stage = Stage.new

    @stage.user_id = params.fetch("user_id")
    @stage.name = params.fetch("name")
    @stage.number = params.fetch("number")
    @stage.number_of_deals = params.fetch("number_of_deals")
    @stage.total_days = params.fetch("total_days")
    @stage.active_days = params.fetch("active_days")
    @stage.probability_deal_closes = params.fetch("probability_deal_closes")

    if @stage.valid?
      @stage.save

      redirect_to("/stages", :notice => "Stage created successfully.")
    else
      render("stage_templates/new_form.html.erb")
    end
  end

  def edit_form
    @stage = Stage.find(params.fetch("prefill_with_id"))

    render("stage_templates/edit_form.html.erb")
  end

  def update_row
    @stage = Stage.find(params.fetch("id_to_modify"))

    @stage.user_id = params.fetch("user_id")
    @stage.name = params.fetch("name")
    @stage.number = params.fetch("number")
    @stage.number_of_deals = params.fetch("number_of_deals")
    @stage.total_days = params.fetch("total_days")
    @stage.active_days = params.fetch("active_days")
    @stage.probability_deal_closes = params.fetch("probability_deal_closes")

    if @stage.valid?
      @stage.save

      redirect_to("/stages/#{@stage.id}", :notice => "Stage updated successfully.")
    else
      render("stage_templates/edit_form.html.erb")
    end
  end

  def destroy_row
    @stage = Stage.find(params.fetch("id_to_remove"))

    @stage.destroy

    redirect_to("/stages", :notice => "Stage deleted successfully.")
  end
end
