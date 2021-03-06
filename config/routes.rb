# frozen_string_literal: true

Rails.application.routes.draw do
  get 'restaurants/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants, except: %i[update destroy] do
    resources :reviews, only: %i[new create]
  end
  resources :reviews, only: :destroy
end
