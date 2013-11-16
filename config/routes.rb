MyDiabetesPlus::Application.routes.draw do
  devise_for :users

  resources :dashboard do
    post :blood_reading, on: :collection
  end

  resources :basals, :boluses

  root 'home#index'
end
