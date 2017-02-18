class Video < ApplicationRecord
  belongs_to :user
  has_many :video_tag
  has_many :videos
  has_many :tags, :through => :video_tag
  has_many :video_comments
  has_many :users, :through => :video_comments
  has_many :video_likes
  has_many :users, :through => :video_likes

end
