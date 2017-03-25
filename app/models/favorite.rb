class Favorite < ApplicationRecord
  belongs_to :user
  validates :title, :user, :date, :videoId, :image, presence: true
end
