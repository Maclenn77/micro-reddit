Rails.application.routes.draw do
  root to: 'posts#index'
  resources :posts do
    resources :comments
  end
  resources :users
  resources :taggings
  resources :tags 
end
