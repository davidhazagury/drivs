Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  resources :vehicules do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, except: [:new, :create]

  scope :dashboard do
    resources :bookings, only: [:index], as: 'dashboard'
  end
end
