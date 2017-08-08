Rails.application.routes.draw do
  devise_for :students
  # Routes for the Student resource:
  # READ
  get "/students", :controller => "students", :action => "index"
  get "/students/:id", :controller => "students", :action => "show"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
