Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root 'categories#index'

  ########========CONVERT TOU RESOURCES start===============########
  # get '/categories' => 'categories#index', as: 'categories'
  # get '/categories/new' => 'categories#new', as: 'new_category'
  # #get '/categories/name/:name' => 'categories#find_name',
  # get '/categories/:id' => 'categories#show', as: 'category'
  # delete '/categories/:id' => 'categories#destroy', as: 'category'
  # get '/categories/:id/edit' => 'categories#edit', as: 'edit_category'
  # put '/categories/:id' => 'categories#update', as: 'category'
  # post '/categories' => 'categories#create', as: 'categories'
  ########========CONVERT TOU RESOURCES end===============########

#  get '/categories' => 'categories#index'
resources :categories #do
# end

end
