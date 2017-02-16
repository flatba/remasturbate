json.extract! curation_video, :id, :curation_id, :video_id, :created_at, :updated_at
json.url curation_video_url(curation_video, format: :json)