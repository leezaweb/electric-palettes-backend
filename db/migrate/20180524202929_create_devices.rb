class CreateDevices < ActiveRecord::Migration[5.1]
  def change
    create_table :devices do |t|
      t.string :title_raw
      t.string :date
      t.string :description
      t.integer :decade
      t.string :medium
      t.string :dimensions
      t.string :gallery_text
      t.string :device_type
      t.string :designer
      t.string :tags
      t.references :shape
      t.references :palette
      t.timestamps
    end
  end
end
