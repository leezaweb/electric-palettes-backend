class Device < ApplicationRecord
  belongs_to :shape

  belongs_to :palette
  has_many :colors, through: :palette

  has_many :images

end
