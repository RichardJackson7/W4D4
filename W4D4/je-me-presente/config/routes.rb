Rails.application.routes.draw do
  root 'static_pages#home'
  get '/contact', to: 'static_pages#contact', as: 'contact'
  get '/about', to: 'static_pages#about', as: 'about'
  get '/about/ma_page', to: 'static_pages#about_me', as: 'ma_page'
  get '/about/mon_groupe', to: 'static_pages#about_mon_groupe', as: 'page_de_mon_groupe'
  get '/new', to: 'users#new'
  post'/new', to: 'users#create'
  get '/users/:id', to: 'users#show', as: 'user'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
