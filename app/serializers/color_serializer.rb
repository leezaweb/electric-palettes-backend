class ColorSerializer < ActiveModel::Serializer
  # has_many :color_palettes, serializer: ColorPaletteSerializer
  # has_many :palettes, through: :color_palettes, serializer: PaletteSerializer
  has_many :devices, through: :palettes, serializer: DeviceSerializer
  attributes :name, :id, :devices,:device_count
end
