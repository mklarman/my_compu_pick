Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

# root to: "states#index"
get "/users" => "welcome#index"
get "/about" => "welcome#about"




resources :diaries
resources :three_digit_draws
resources :four_digit_draws
resources :mega_draws


devise_for :users, :controllers => { :registrations => 'users/registrations' }
devise_scope :user do
  authenticated :user do
    root :to => "welcome#show", as: :authenticated_root
  end
  unauthenticated :user do
    root :to => 'devise/registrations#new', as: :unauthenticated_root
  end
end

get "/users/:id" => "welcome#show"






end
