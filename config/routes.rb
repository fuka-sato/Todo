Rails.application.routes.draw do
  devise_for :users,controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks'
  }
    devise_scope :users do
      root to: "devise/sessions#new"
    end
  resources :posts 
  resources :users
end
