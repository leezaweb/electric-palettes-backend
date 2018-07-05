Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :images
      resources :colors
      resources :color_palettes
      resources :palettes
      resources :shapes
      get 'devices/all', :to => 'devices#all', :as => 'devices_all'
      resources :devices

      # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    end
  end
end
