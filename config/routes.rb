Rails.application.routes.draw do
  
  resources :categories do 
      resources :posts #, only: [:index] 
  end 
  
  #get '/homepage',  to: "homepage#index", as: :homepage
  get '/index',      to: "pages#index", as: :index
  get '/:page',      to: "pages#show"
  root               to: "pages#index"
  
  #root "pages#index"
  
end