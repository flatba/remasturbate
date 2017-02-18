class VideoComment < ApplicationRecord
  belongs_to :video
  belongs_to :user
  has_many :videos
end
