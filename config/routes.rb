Rails.application.routes.draw do
  resources :lists do
  	member do 
  		patch :complete
  	end
  end
  
root 'lists#index'
end
