Rails.application.routes.draw do
<<<<<<< HEAD
    devise_for :users
    root 'videos#index'
    get 'pages/show'
    resources :curation_likes
    resources :curation_comments
    resources :curation_videos
    resources :curations
    resources :video_tags
    resources :tags
    resources :video_likes
    resources :video_comments
    resources :videos

    # get 'pages/index'
    # get 'pages/show'
=======
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
  devise_for :users
>>>>>>> fd92722648e32277da304b893747d76e076bbc79

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
