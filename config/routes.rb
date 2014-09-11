Rails.application.routes.draw do
  resources :coords

  resources :tees

  resources :holes

  resources :courses

  resources :clubs

  get "/clubs/:id/fees" => "clubs#green_fees", as: :green_fees
  get "/clubs/:id/contact" => "clubs#contact", as: :contact

  get "/clubs/:id/courses/:id" => "courses#show", as: :club_course
  get "/clubs/:club_id/courses/:course_id/holes/:id" => "holes#show", as: :course_hole

  root to: 'visitors#index'
  devise_for :users
  resources :users
end
