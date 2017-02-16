json.extract! video, :id, :url, :title, :description, :website, :user_id, :thumbnails, :created_at, :updated_at
json.url video_url(video, format: :json)