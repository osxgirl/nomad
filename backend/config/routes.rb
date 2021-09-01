Rails.application.routes.draw do
    namespace :api do
      namespace :v1 do
        resources :coaches, only: [:index, :create, :destroy, :update]
        resources :welcome
        
        root to: 'welcome#index'
      end
    end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
