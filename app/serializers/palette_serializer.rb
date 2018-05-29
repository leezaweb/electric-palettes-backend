class PaletteSerializer < ActiveModel::Serializer
  # belongs_to :device, serializer: DeviceSerializer
  # has_many :color_palettes, serializer: ColorPaletteSerializer
  # has_many :colors, through: :color_palettes, serializer: ColorSerializer

  attributes :id, :colors
end
