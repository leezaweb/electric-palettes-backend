class ShapeSerializer < ActiveModel::Serializer
  has_many :devices, serializer: DeviceSerializer
  attributes :name
end
