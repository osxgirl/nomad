Rails.application.routes.draw do
    root 'welcome#index'
    
    resources :trainer1
    get 'trainer1', to: 'trainer1#index', as: 'index'
    
    namespace :api do
      namespace :v1 do
        resources :coaches, only: [:index, :create, :destroy, :update]
     
      end
    end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
