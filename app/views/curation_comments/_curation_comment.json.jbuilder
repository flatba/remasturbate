json.extract! curation_comment, :id, :curation_id, :user_id, :comment, :created_at, :updated_at
json.url curation_comment_url(curation_comment, format: :json)