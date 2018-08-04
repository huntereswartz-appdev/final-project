Rails.application.routes.draw do
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

  get("/", { :controller => "stages", :action => "index" })
  
  #------------------------------
  
  #Routes for Sales Plan
  
  # READ
  get("/plan", { :controller => "plan", :action => "index" })


  
  
  
  
  
  
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
