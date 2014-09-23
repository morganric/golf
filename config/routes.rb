Rails.application.routes.draw do
  resources :coords

  resources :tees

  resources :holes

  resources :courses

  resources :clubs

  get "/clubs/:id/fees" => "clubs#green_fees", as: :green_fees
  get "/clubs/:id/contact" => "clubs#contact", as: :contact

  get "/clubs/:club_slug/courses/:id" => "courses#show", as: :club_course
  get "/clubs/:club_slug/courses/:course_slug/holes/:id" => "holes#show", as: :course_hole

  
  devise_for :users
  resources :users

  # get '/' => 'clubs#show', :constraints => { :slug => /.+/ } , via: [:get, :post]
  # root to: 'visitors#index'

  constraints(Subdomain) do  
     get '/' => 'clubs#show', via: [:get, :post]
  end  
  root to: 'visitors#index'

end
