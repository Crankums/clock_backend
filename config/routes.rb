Rails.application.routes.draw do
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at "/graphiql", graphiql_path: "graphql#execute"
  end
  post "/graphql", to: "graphql#execute"
  namespace :api do
    namespace :v1 do
      resources :employees
      resources :timecards
      resources :punches
    end
  end
end

