Rails.application.routes.draw do
  
  resources :categories do 
      resources :posts #, only: [:index] 
  end 
  
  #get '/homepage',  to: "homepage#index", as: :homepage
  get '/:page',      to: "pages#show"
  root               to: "pages#marketing"
  #root "pages#index"
  
end