class Favorite < ApplicationRecord
  belongs_to :user
  validates :title, :user, :date, :video_id, :image, presence: true
end
