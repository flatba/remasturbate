Rails.application.routes.draw do
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
  get 'users/:id', to: 'users#show', as: :user
  devise_for :users


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
