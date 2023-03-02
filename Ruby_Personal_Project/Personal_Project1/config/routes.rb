Rails.application.routes.draw do
  resources :jobs

  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"

  root 'jobs#index'
end