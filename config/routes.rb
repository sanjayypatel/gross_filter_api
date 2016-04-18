Rails.application.routes.draw do

  # API definition
  namespace :api, defaults: { format: :json },
                  constraints: { subdomain: 'api' },
                  path: '/'  do

    scope module: :v1 do
      
    end # module: :v1
  end # namespace :api
end
