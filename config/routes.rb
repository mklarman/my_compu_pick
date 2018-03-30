Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root to: "states#index"
get "/users" => "welcome#index"
# 
resources :states
resources :diaries

devise_for :users, :controllers => { :registrations => 'users/registrations' }
devise_scope :user do
  authenticated :user do
    root :to => "welcome#show"
  end
  unauthenticated :user do
    root :to => 'devise/registrations#new', as: :unauthenticated_root
  end
end

get "/users/:id" => "welcome#show"



end
