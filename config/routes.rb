Rails.application.routes.draw do
  get 'layouts/header'
  get 'simple_pages/products'
  get 'simple_pages/about'
  get 'simple_pages/contact'
  get 'simple_pages/index'
  get 'simple_pages/section1'
  get 'simple_pages/section2'
  get 'simple_pages/section3'
  root 'simple_pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
