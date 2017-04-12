Rails.application.routes.draw do 
  delete '/tasks',   to:  'tasks#destroy'

  devise_for :users, controllers: { registrations: "registrations"}
  resources :tasks do
    member do
      get 'complete'
    end

  	collection do
      post :destroy_multiple
    end  
  end

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

