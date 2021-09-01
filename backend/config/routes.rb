Rails.application.routes.draw do
    root 'welcome#index'
    
    resources :trainer1
    get 'trainer1', to: 'trainer1#christy', as: 'christy'
    get 'trainer2', to: 'trainer2#natalia', as: 'natalia'
    get 'trainer3', to: 'trainer3#natalia', as: 'nola'
    get 'trainer4', to: 'trainer4#natalia', as: 'elyssa'
    get 'trainer5', to: 'trainer5#natalia', as: 'geovany'
    namespace :api do
      namespace :v1 do
        resources :coaches, only: [:index, :create, :destroy, :update]
     
      end
    end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
