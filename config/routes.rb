Rails.application.routes.draw do
  
  get 'sessions/new'

  root 'blogs#top'
  
  resources :blogs do
    collection do
      post :confirm
      #get :favorite 要確認
    end
  end
  
  resources :sessions, only: [:new, :create, :destroy]
  resources :users
  resources :favorites, only: [:create, :destroy]
  
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end

end
