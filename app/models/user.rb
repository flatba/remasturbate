class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :video_comment
  has_many :videos
  has_one :video, :through => :video_comments
  has_many :video_likes
  has_one :video, :through => :video_likes
end
