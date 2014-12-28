University::Application.routes.draw do
  root 'courses#index'

  resources :courses
  resources :prerequisites
end