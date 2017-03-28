class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :title, :date, :video_id, :image
end
