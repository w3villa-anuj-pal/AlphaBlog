Rails.application.routes.draw do
  resources :users
  root to:"home#index"
  resources :blogs
  resources :users
  get    'login',  to: 'sessions#new'
  post   'login',  to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  # match '*path', via: :all,to:'errors#page_not_found'
end
