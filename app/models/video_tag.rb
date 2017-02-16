class VideoTag < ApplicationRecord
  belongs_to :tag
  belongs_to :video
end
