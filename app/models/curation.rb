class Curation < ApplicationRecord
  belongs_to :user
  has_many :videos, :through => :curation_videos
  has_many :curation_videos
  has_many :curation_likes
  has_many :users, :through => :curation_likes
  has_many :curation_comments
end
