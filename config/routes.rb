Rails.application.routes.draw do
  devise_for :developers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"

  get "/admin/dashboard",  to: "home#admin"

  resources :projects

  resources :developers
end
