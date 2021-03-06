# frozen_string_literal: true

Rails.application.routes.draw do
  resources :items, except: %i[new]
  resources :users, only: %i[show create]
  resources :login, only: %i[create]
  resources :records, except: %i[new]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
