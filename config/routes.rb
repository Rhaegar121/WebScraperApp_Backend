Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :api do
    get 'products/index'
    get 'products/show'
    get 'products/create'
    resources :products, only: %i[index show create]
    resources :categories, only: %i[index]
  end
end
