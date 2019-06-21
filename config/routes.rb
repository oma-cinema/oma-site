Rails.application.routes.draw do
  get 'contact', to: 'pages#contact', as: :contact
  get 'about', to: 'pages#about', as: :about
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'

  resources :articles
  resources :cinemas do
    resources :reviews, only: [ :new, :create ]
  end
end
