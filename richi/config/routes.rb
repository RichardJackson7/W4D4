Rails.application.routes.draw do
  root'static_pages#home'

  get '/', to:'static_pages#home'
  
  get '/user', to: 'users#new', as:'new'
  post '/new', to: 'users#create', as: 'create'
  
  get '/users/:id', to: 'users#show', as:"id"


  get '/', to:'static_pages#home'

  get '/contact', to:'static_pages#contact'
  get '/about', to:'static_pages#about'
  
  get '/about/:me', to:'static#about_me', as:'me'
  get '/about/:team', to:'static#about_team', as:'team'
  

end
