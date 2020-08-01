Rails.application.routes.draw do
  devise_for :users,controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks'
    # registrations: 'users/registrations'
  }
    devise_scope :user do
      root to: "devise/sessions#new"
    end
  resources :posts 
  resources :users
end
