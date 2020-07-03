Rails.application.routes.draw do
  root 'tops#home'
  get 'help', to: 'tops#help'
  get 'about', to: 'tops#about'
  get 'contact', to: 'tops#contact'
  get '/signup', to: 'users#new'

  resources :users, except:[:new]

end
