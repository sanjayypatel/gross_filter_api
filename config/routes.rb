require 'api_constraints.rb'
Rails.application.routes.draw do

  # API definition
  namespace :api, defaults: { format: :json },
                  constraints: { subdomain: 'api' },
                  path: '/'  do

    scope module: :v1, constraints: ApiConstraints.new(version: 1, default: true) do
      
    end # module: :v1
  end # namespace :api
end
