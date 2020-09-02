Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :employees
      resources :timecards
      resources :punches
    end
  end
end

