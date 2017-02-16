class CurationLike < ApplicationRecord
  belongs_to :user
  belongs_to :curation
end
