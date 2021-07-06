Rails.application.routes.draw do
  root 'home_pages#index'
  get 'home_pages/about'
  get 'home_pages/contact'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  resources :categories, only:[:show] do
    resources :posts, only:[:show]
  end
end
