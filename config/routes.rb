Rails.application.routes.draw do
  post "/graphql", to: "graphql#execute"
  namespace :api do
    namespace :v1 do
      resources :employees
      resources :timecards
      resources :punches
    end
  end
end

