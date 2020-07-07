Rails.application.routes.draw do
  root "tops#home"
  get "features", to: "tops#about"
  get "help",     to: "tops#help"
  get "contact",  to: "tops#contact"
  get "/signup",  to: "users#new"

  resources :users, except: [:new]
  resources :orders
  resources :medicines, only: [:show, :index]
  resources :messages
  resources :message_contents

end
