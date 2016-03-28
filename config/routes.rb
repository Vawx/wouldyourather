Rails.application.routes.draw do
  root "frontend#index"
  resources :questions
end
