class ImageSerializer < ActiveModel::Serializer
  belongs_to :device, serializer: DeviceSerializer
  attributes :id, :url, :primary
end
