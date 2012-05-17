EncuboGu::Application.routes.draw do
  resource :user_session
  resources :products
  resources :contents
end
