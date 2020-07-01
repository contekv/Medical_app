Rails.application.routes.draw do
  root 'tops#home'
  get 'help', to: 'tops#help'
  
resources :users

end
