Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'writings#index'
  resources :writings do
	resources :paragraphs do
	  resources :comments
	end
  end

end
