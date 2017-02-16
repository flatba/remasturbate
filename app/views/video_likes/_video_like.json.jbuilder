json.extract! video_like, :id, :video_id, :user_id, :created_at, :updated_at
json.url video_like_url(video_like, format: :json)