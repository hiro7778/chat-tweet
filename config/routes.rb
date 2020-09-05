Rails.application.routes.draw do
  devise_for :users
  root to: "messages#index" #ルートパスへのアクセスがあったら、messages_controllerのindexアクションが呼び出される
  resources :users, only: [:edit, :update]
end
