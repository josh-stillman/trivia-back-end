Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
      namespace :v1 do
        post '/get_questions', to: 'questions#get_questions'
        resources :users
        resources :games, only: [:index, :show, :create]
        resources :rounds, only: [:index, :show, :create]
      end
    end


end
