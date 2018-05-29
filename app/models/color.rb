class Color < ApplicationRecord
has_many :color_palettes
has_many :palettes, through: :color_palettes
has_many :devices, through: :palettes

end
