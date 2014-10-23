Rails.application.routes.draw do
  devise_for :users
  resources :products do
    resources :reviews
  end

  root 'welcome#index'

end
