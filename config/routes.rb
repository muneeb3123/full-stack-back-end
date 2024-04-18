Rails.application.routes.draw do
  devise_for :users
  get '/isUser', to: 'users#isUser'
  namespace :api do
    namespace :v1 do
      devise_scope :user do
        get 'isUser', to: 'users/sessions#isUser'
      end
      devise_for :users, controllers: {
        sessions: 'api/v1/users/sessions',
        registrations: 'api/v1/users/registrations'
      }
    end
  end
end
