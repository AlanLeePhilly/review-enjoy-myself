Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "shows#index"

  resources :shows, only: [:index, :create, :new] do
    resources :reviews, only: [:index, :create, :new]
  end
end
