Rails.application.routes.draw do
  resources :users
  root to:"home#index"
  resources :articles
  resources :blogs
  # match '*path', via: :all,to:'errors#page_not_found'
end
