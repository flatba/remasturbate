Rails.application.routes.draw do
  resources :curation_tags
  get 'user/show'

  root 'videos#index'
  resources :curation_likes
  resources :curation_comments
  resources :curation_videos
  resources :curations
  resources :video_tags
  resources :tags
  resources :video_likes
  resources :video_comments
  resources :videos
  post 'add_oneday_bookmark/:id', to: 'videos#add_oneday_bookmark', as: :add_oneday_bookmark
  get 'oneday_bookmark', to: 'videos#oneday_bookmark', as: :oneday_bookmark
  get 'popular_today', to: 'videos#popular_today', as: :popular_today
  get 'popular_week', to: 'videos#popular_week', as: :popular_week
  get 'popular_month', to: 'videos#popular_month', as: :popular_month
  get 'popular', to: 'videos#popular', as: :popular
  devise_for :users
  get 'users/:id', to: 'users#show', as: :user
  resources :users do
    member do
     get :following, :followers
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
