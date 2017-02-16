json.extract! curation_like, :id, :user_id, :curation_id, :created_at, :updated_at
json.url curation_like_url(curation_like, format: :json)