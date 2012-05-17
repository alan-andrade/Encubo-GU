EncuboGu::Application.routes.draw do
  resource :user_session
  resources :products
  resources :contents
  root to: 'user_sessions#new'
end
