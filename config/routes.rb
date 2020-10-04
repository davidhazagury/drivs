Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  resources :vehicules do
    resources :requested_bookings, only: [:new], as: 'request_booking'
  end
end
