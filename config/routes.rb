Rails.application.routes.draw do
  resources :posts
  devise_for :users
  devise_scope :user do
    authenticated :user do
      root "posts#index"
    end
	end
  unauthenticated do
    root 'devise/sessions#new', as: :unauthenticated_root
  end

end
