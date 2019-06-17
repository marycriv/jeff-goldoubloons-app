Rails.application.routes.draw do
  get 'static_pages/home'
  get 'static_pages/help'
  # get 'coins/index'
  # get 'coins/show'
  # get 'coins/new'
  # get 'pressings/index'
  # get 'pressings/show'
  # get 'pressings/new'
  # get 'pressings/edit'
  # get 'users/index'
  # get 'users/show'
  # get 'users/new'
  # get 'users/edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users
  get 'signup', to: 'users#new', as: :signup
  resources :pressings
  get 'home', to: 'static_pages#home', as: :home
  # resources :coins
end
