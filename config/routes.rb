Rails.application.routes.draw do
  namespace :api, defaults: {format: 'json'} do
    resources :users do
      collection do
        post 'authenticate'
        post 'delete_all'
      end
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
