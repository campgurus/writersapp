Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'writings#index'
  resources :writings

  get "comments/new_comment" => 'comments#new_comment', :as => :new_comment


end
