json.extract! curation, :id, :user_id, :title, :description, :created_at, :updated_at
json.url curation_url(curation, format: :json)