Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/super_admin', as: 'rails_admin'



  authenticated :user do
    root to: 'home#index', as: :authenticated_root
  end

  root to: 'users#sign_in'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
