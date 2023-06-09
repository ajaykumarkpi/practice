Rails.application.routes.draw do
  resources :topics, only: [:index, :show]
  
  devise_for :users, path: '', path_names: {sign_in: 'login',sign_out: 'logout',sign_up: 'register'}
  resources :portfos, except: [:show ] do
    put :sort, on: :collection
  end

  get 'angular-items', to: 'portfos#angular'
  get 'portfo/:id', to: 'portfos#show', as: 'portfo_show'

  get 'about-me',to: 'pages#about'
  get 'contact',to: 'pages#contact'

  resources :blogs do
    member do
      get :toggle_status
    end
  end
  
  root to: 'pages#home'
end
