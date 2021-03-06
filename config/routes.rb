Rails.application.routes.draw do
  devise_for :users
  # Routes for the Goal resource:

  # CREATE
  get("/goals/new", { :controller => "goals", :action => "new_form" })
  post("/create_goal", { :controller => "goals", :action => "create_row" })

  # READ
  get("/goals", { :controller => "goals", :action => "index" })
  get("/goals/:id_to_display", { :controller => "goals", :action => "show" })

  # UPDATE
  get("/goals/:prefill_with_id/edit", { :controller => "goals", :action => "edit_form" })
  post("/update_goal/:id_to_modify", { :controller => "goals", :action => "update_row" })

  # DELETE
  get("/delete_goal/:id_to_remove", { :controller => "goals", :action => "destroy_row" })

  #------------------------------

  # Routes for the Stage resource:

  # CREATE
  get("/stages/new", { :controller => "stages", :action => "new_form" })
  post("/create_stage", { :controller => "stages", :action => "create_row" })

  # READ
  get("/stages", { :controller => "stages", :action => "index" })
  get("/stages/:id_to_display", { :controller => "stages", :action => "show" })

  # UPDATE
  get("/stages/:prefill_with_id/edit", { :controller => "stages", :action => "edit_form" })
  post("/update_stage/:id_to_modify", { :controller => "stages", :action => "update_row" })

  # DELETE
  get("/delete_stage/:id_to_remove", { :controller => "stages", :action => "destroy_row" })

  #------------------------------

  get("/", { :controller => "plan", :action => "index" })
  
  #------------------------------
  
  #Routes for Sales Plan
  
  # READ
  get("/plan", { :controller => "plan", :action => "index" })


  
  
  
  
  
  
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
