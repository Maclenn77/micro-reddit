Rails.application.routes.draw do
  root to: 'post#index'
  
  resources :users

  resources :subscriptions

  resources :subreddits do
    resources :posts do
      resources :comments
    end
  end
  
end
