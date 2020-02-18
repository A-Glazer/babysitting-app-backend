Rails.application.routes.draw do
  
  namespace :api do 
    namespace :v1 do
      resources :babysitters do 
        resources :slots
        resources :comments
      end
        
    end
  end
end
