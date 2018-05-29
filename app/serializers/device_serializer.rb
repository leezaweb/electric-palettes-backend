class DeviceSerializer < ActiveModel::Serializer

  belongs_to :shape, serializer: ShapeSerializer
  has_many :images, serializer: ImageSerializer

  has_many :colors, through: :palette, serializer: ColorSerializer
  attributes :id, :title_raw, :date, :description, :decade, :medium, :dimensions, :gallery_text, :device_type, :designer, :tags, :palette


end
