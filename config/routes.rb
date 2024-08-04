Rails.application.routes.draw do
  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root 'home#index'
  get 'home/index', to: 'home#index'

  resources :employees
  resources :bills
  resources :departments
end
