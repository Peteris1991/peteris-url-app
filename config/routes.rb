Rails.application.routes.draw do
  get 'pages/home'
  resources :short_urls
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
