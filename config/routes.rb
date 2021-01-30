Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "cocktails#home"
  resources :cocktails , only: [ :new, :create, :index, :show ] do
    resources :doses , only: [ :new, :create, :destroy ]
  end
end
