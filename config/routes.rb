# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  constraints(lambda { |req| req.format == :json }) do
    resources :tasks, except: %i[new edit], param: :slug # to use slug as default param instead of id
    resources :users, only: %i[ index create]
    resource :session, ony: %i[create destroy]
  end

  root "home#index"
  get "*path", to: "home#index", via: :all
  # Defines the root path route ("/")
  # root "posts#index"
end
