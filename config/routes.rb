Rails.application.routes.draw do
  devise_for :users

  unauthenticated do
    root to: "main#index", as: :unauthenticated_root
  end

  authenticated do
    root to: "main#index"
  end
end
