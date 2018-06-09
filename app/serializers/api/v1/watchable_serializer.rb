class Api::V1::WatchableSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :title, :description, :thumbnail_key, :featured_thumbnail_key

  attribute :type &:model_name

  # attribute :type do |object|
  #   object.model_name
  # end

  attribute :favorite do |object, params|
    if params.present? && params.key?(:user)
      params[:user].favorites.where(favoritable: object).exists?
    end
  end

  attribute :video_key do |object|
    object.video_key if object[:video_key].present?
  end

  attribute :featured_thumbnail_key do |object|
    object.featured_thumbnail_key if object[:featured_thumbnail_key].present?
  end
end
