Rails.application.routes.draw do
  resources :heroine_powers
  resources :powers, only: [:index, :show, :new]
  resources :heroines, only: [:index, :show, :new, :create]  
end
