require 'pry'
class Palette < ApplicationRecord
  has_many :devices
  has_many :color_palettes
  has_many :colors, through: :color_palettes
  validate :palette_validator

  def palette_validator
    puts "*** in validator #{colors.length} ***"
    colpals = ColorPalette.where(color_id:colors.map(&:id))
    puts "*** colpals #{colpals.length} ***"

    pals = colpals.to_a.group_by(&:palette_id).values
    puts "*** pals #{pals.length} ***"

    # if pals.any?{|x|x.length==colors.length}
    #
    #   puts "error #{pals.length}"
    #
    #   errors.add(:colors, "palette exists")
    #
    # else
    #   puts "!!! success !!!"
    # end


  end



end
