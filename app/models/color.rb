class Color < ApplicationRecord
has_many :color_palettes
has_many :palettes, through: :color_palettes
has_many :devices, through: :palettes
attr_reader :device_count


  def device_count
    self.devices.count
  end
end
