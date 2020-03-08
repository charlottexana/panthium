Rails.application.routes.draw do
  # devise_for :users
  root to: 'panthium_items#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :panthium_items do
  end

  resources :services do
  end

  resources :enquiries do
  end
end
