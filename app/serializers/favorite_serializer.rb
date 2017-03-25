class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :title, :date, :videoId, :image
end
