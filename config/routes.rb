Rails.application.routes.draw do
  resources :users, only: [:index, :show, :create, :update, :destroy]
  resources :groups, only: [:index, :show, :create, :update, :destroy]
  resources :user_groups, only: [:index, :show, :create, :update, :destroy]
  resources :user_books, only: [:index, :show, :create, :update, :destroy]
  resources :group_books, only: [:index, :show, :create, :update, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
