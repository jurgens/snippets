Snippets::Application.routes.draw do

  root :to => 'home#index'

  resources :boards, except: [:show]
  resources :snippets, except: [:index]
  resource :account

  devise_for :users

  match '/:slug', to: "snippets#index", as: :board

  # match ':controller(/:action(/:id))(.:format)'
end
