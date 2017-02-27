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
  get 'videos/:id', to: 'videos#show', as: :video
  resources :videos
  devise_for :users
  get 'users/:id', to: 'users#show', as: :user
  resources :users do
    member do
     get :following, :followers
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
