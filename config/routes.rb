Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'articles#index'
  get 'pages/about', to: 'pages#about'

  resources :articles do
  	member do
  		put :like, to: 'articles#upvote'
  		put :unlike, to: 'articles#downvote'
  	end
  end

  resources :articles do
    resources :comments
  end

  get 'signup', to: 'users#new'
  resources :users, except: [:new]

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end
