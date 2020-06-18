Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => 'registrations', :omniauth_callbacks => 'callbacks'}

  root to: 'application#welcome'

  devise_scope :user do 
    get 'login', to: 'devise/sessions#new'
    get 'signup', to: 'devise/registrations#new'
  end

  resources :workouts, only: [:index, :new]

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
