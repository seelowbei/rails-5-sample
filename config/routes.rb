Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'
  namespace :v2 do
    resource :pet
    resource :store do
      post '/order', to: 'stores#order'
      get '/order/:id', to: 'stores#show'
    end
  end
end
