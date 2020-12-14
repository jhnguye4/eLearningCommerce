Rails.application.routes.draw do
  resources :reviews
  resources :courses_in_carts
  resources :carts
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/login'
  get 'sessions/welcome'

  resources :admins
  resources :courses
  resources :teachers
  resources :students
  resources :users
  resources :reviews

  root 'sessions#welcome'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'

  delete 'logout', to: 'sessions#destroy'

  get 'welcome', to: 'sessions#welcome'

  get 'enrolled', to: 'courses#enrolled'

  get 'courses/:id/teacher_form', to: 'courses#teacher_form'
  patch 'courses/:id/teacher_form', to: 'courses#teacher_form_update'

  post 'register', to: 'courses#assign_teachers'
  post 'checkout', to: 'courses_in_carts#checkout'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
