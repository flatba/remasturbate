json.extract! user_like, :id, :user_id, :video_id, :created_at, :updated_at
json.url user_like_url(user_like, format: :json)