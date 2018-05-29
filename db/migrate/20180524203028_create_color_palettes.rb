class CreateColorPalettes < ActiveRecord::Migration[5.1]
  def change
    create_table :color_palettes do |t|
      t.references :color
      t.references :palette
      t.timestamps
    end
  end
end
