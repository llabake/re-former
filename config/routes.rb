# frozen_string_literal: true

Rails.application.routes.draw do
  # patch 'users/:id', to: 'user#update'
  resources :users, only: %i[new create edit update]


end
