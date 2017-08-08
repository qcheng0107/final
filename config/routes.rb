Rails.application.routes.draw do
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
