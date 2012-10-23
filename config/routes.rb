KellyPicmarks::Application.routes.draw do
  get "/pictures" => 'pictures#index', :as => :all_pictures
  post "/pictures" => 'pictures#create'

  get "/pictures/new" => 'pictures#new', :as => :new_picture
  
  get "/pictures/:id" => 'pictures#show', :as => :single_picture
  delete "/pictures/:id" => 'pictures#delete'
  put "/pictures/:id" => 'pictures#update'

  get "/pictures/:id/update" => "pictures#edit", :as => :update_form
end