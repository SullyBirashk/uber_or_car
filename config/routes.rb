Rails.application.routes.draw do
  resources :estimate, only: [:new]

  get '/estimate', to: 'estimate#show'
end
