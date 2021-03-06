require 'api_constraints.rb'
Rails.application.routes.draw do

  mount SabisuRails::Engine => "/sabisu_rails"
  devise_for :users
  # API definition
  namespace :api, defaults: { format: :json },
                  constraints: { subdomain: 'api' },
                  path: '/'  do

    scope module: :v1, constraints: ApiConstraints.new(version: 1, default: true) do
      resources :users, :only => [:show, :create, :update, :destroy]
      resources :sessions, :only => [:create, :destroy]
    end # module: :v1
  end # namespace :api
end
