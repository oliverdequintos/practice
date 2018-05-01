Rails.application.routes.draw do
  mount Practice::API => '/'
  resources :articles
end
