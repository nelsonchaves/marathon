Rails.application.routes.draw do
  resources :fuel_options

  resources :fuel_calculators
  
  devise_for :users

  unauthenticated do
    root to: "main#index", as: :unauthenticated_root
  end

  authenticated do
    root to: "main#index"
  end
end
