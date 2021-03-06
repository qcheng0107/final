Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root :to => "courses#index"
  # Routes for the Req_receiver resource:
  # CREATE
  get "/req_receivers/new", :controller => "req_receivers", :action => "new"
  post "/create_req_receiver", :controller => "req_receivers", :action => "create"

  # READ
  get "/req_receivers", :controller => "req_receivers", :action => "index"
  get "/req_receivers/:id", :controller => "req_receivers", :action => "show"

  # UPDATE
  get "/req_receivers/:id/edit", :controller => "req_receivers", :action => "edit"
  post "/update_req_receiver/:id", :controller => "req_receivers", :action => "update"

  # DELETE
  get "/delete_req_receiver/:id", :controller => "req_receivers", :action => "destroy"
  #------------------------------

  # Routes for the Req_sender resource:
  # CREATE
  get "/req_senders/new", :controller => "req_senders", :action => "new"
  post "/create_req_sender", :controller => "req_senders", :action => "create"

  # READ
  get "/req_senders", :controller => "req_senders", :action => "index"
  get "/req_senders/:id", :controller => "req_senders", :action => "show"

  # UPDATE
  get "/req_senders/:id/edit", :controller => "req_senders", :action => "edit"
  post "/update_req_sender/:id", :controller => "req_senders", :action => "update"

  # DELETE
  get "/delete_req_sender/:id", :controller => "req_senders", :action => "destroy"
  #------------------------------

  # Routes for the Skill resource:
  # CREATE
  get "/skills/new", :controller => "skills", :action => "new"
  post "/create_skill", :controller => "skills", :action => "create"

  # READ
  get "/skills", :controller => "skills", :action => "index"
  get "/skills/:id", :controller => "skills", :action => "show"

  # UPDATE
  get "/skills/:id/edit", :controller => "skills", :action => "edit"
  post "/update_skill/:id", :controller => "skills", :action => "update"

  # DELETE
  get "/delete_skill/:id", :controller => "skills", :action => "destroy"
  #------------------------------

  # Routes for the Session resource:
  # CREATE
  get "/sessions/new", :controller => "sessions", :action => "new"
  post "/create_session", :controller => "sessions", :action => "create"

  # READ
  get "/sessions", :controller => "sessions", :action => "index"
  get "/sessions/:id", :controller => "sessions", :action => "show"

  # UPDATE
  get "/sessions/:id/edit", :controller => "sessions", :action => "edit"
  post "/update_session/:id", :controller => "sessions", :action => "update"

  # DELETE
  get "/delete_session/:id", :controller => "sessions", :action => "destroy"
  #------------------------------

  # Routes for the Quarter resource:
  # CREATE
  get "/quarters/new", :controller => "quarters", :action => "new"
  post "/create_quarter", :controller => "quarters", :action => "create"

  # READ
  get "/quarters", :controller => "quarters", :action => "index"
  get "/quarters/:id", :controller => "quarters", :action => "show"

  # UPDATE
  get "/quarters/:id/edit", :controller => "quarters", :action => "edit"
  post "/update_quarter/:id", :controller => "quarters", :action => "update"

  # DELETE
  get "/delete_quarter/:id", :controller => "quarters", :action => "destroy"
  #------------------------------

  # Routes for the Team resource:
  # CREATE
  get "/teams/new", :controller => "teams", :action => "new"
  post "/create_team", :controller => "teams", :action => "create"

  # READ
  get "/teams", :controller => "teams", :action => "index"
  get "/teams/:id", :controller => "teams", :action => "show"

  # UPDATE
  get "/teams/:id/edit", :controller => "teams", :action => "edit"
  post "/update_team/:id", :controller => "teams", :action => "update"

  # DELETE
  get "/delete_team/:id", :controller => "teams", :action => "destroy"
  #------------------------------

  # Routes for the Registration resource:
  # CREATE
  get "/registrations/new", :controller => "registrations", :action => "new"
  post "/create_registration", :controller => "registrations", :action => "create"

  # READ
  get "/registrations", :controller => "registrations", :action => "index"
  get "/registrations/:id", :controller => "registrations", :action => "show"

  # UPDATE
  get "/registrations/:id/edit", :controller => "registrations", :action => "edit"
  post "/update_registration/:id", :controller => "registrations", :action => "update"

  # DELETE
  get "/delete_registration/:id", :controller => "registrations", :action => "destroy"
  #------------------------------

  # Routes for the Course resource:
  # CREATE
  get "/courses/new", :controller => "courses", :action => "new"
  post "/create_course", :controller => "courses", :action => "create"

  # READ
  get "/courses", :controller => "courses", :action => "index"
  get "/courses/:id", :controller => "courses", :action => "show"

  # UPDATE
  get "/courses/:id/edit", :controller => "courses", :action => "edit"
  post "/update_course/:id", :controller => "courses", :action => "update"

  # DELETE
  get "/delete_course/:id", :controller => "courses", :action => "destroy"
  #------------------------------

  devise_for :students
  # Routes for the Student resource:
  # READ
  get "/students", :controller => "students", :action => "index"
  get "/students/:id", :controller => "students", :action => "show"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
