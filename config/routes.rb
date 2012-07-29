EncuboGu::Application.routes.draw do
  resource :user_session
  resources :products, :contents
  root to: 'user_sessions#new'
  match 'salir', action: :destroy, controller: :user_sessions, as: 'salir'
  namespace :admin do
    resources :users, only: [:index, :update] do
      put :toggle_access
    end
  end
end
