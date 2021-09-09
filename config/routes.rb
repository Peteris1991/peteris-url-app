Rails.application.routes.draw do
  root 'pages#home'
  resources :short_urls
  devise_for :users
end
