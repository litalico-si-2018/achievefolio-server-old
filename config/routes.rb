Rails.application.routes.draw do
  root 'root#home'

  namespace :api, format: 'json' do
    resources :comments, only: [:index, :create, :update]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
