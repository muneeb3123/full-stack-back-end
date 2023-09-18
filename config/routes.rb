Rails.application.routes.draw do
  resources :reservations, only: [:index, :create]

  get '/current_user', to: 'current_user#index'
  
  resources :cars, only: [:index, :show, :new, :create, :destroy]

  devise_for :users, path:'', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  },
  controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

end