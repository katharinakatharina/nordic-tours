Rails.application.routes.draw do
  resources :products
  resources :orders, only: [:index, :show, :create, :destroy]
  resources :users, only: [:new, :create, :edit, :update, :destroy]
  get 'layouts/header'
  get 'simple_pages/products'
  get 'simple_pages/about'
  get 'simple_pages/contact'
  get 'simple_pages/index'
  get 'simple_pages/section1'
  get 'simple_pages/section2'
  get 'simple_pages/section3'
  root 'products#index'
  # root 'simple_pages#landing_page'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
