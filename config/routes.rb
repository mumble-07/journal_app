# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

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
  resources :categories do
    resources :tasks # , except: :index
  end
  # root 'categories#index' #NOTE: dito ata to sa ilalim, kasi nag error sa test for index nung triny ko ulit yung categories_controller_test
  root 'home#index'
end
