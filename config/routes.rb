Rails.application.routes.draw do
  resources :coords

  resources :tees

  resources :holes

  resources :courses

  resources :clubs

  get "/clubs/:id/courses/:id" => "courses#show", as: :club_course
  get "/clubs/:id/courses/:id/holes/:id" => "holes#show", as: :course_hole

  root to: 'visitors#index'
  devise_for :users
  resources :users
end
