class Tag < ApplicationRecord
  has_many :video_tags
  has_many :videos, :through => :video_tags
  has_many :curations, :through => :curation_tags
end
