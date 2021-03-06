Rails.application.routes.draw do
  root 'home#index'
  namespace :api do
    resources :users, only: %i[index create show]
    resource :session, only: %i[create destroy]
    resources :microposts, only: %i[index create show update destroy]
    resources :tags, only: %i[index]

    namespace :me do
      resource :account, only: %i[update]
    end
  end
end
