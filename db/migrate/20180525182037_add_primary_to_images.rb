class AddPrimaryToImages < ActiveRecord::Migration[5.1]
    def change
      add_column :images, :primary, :boolean
    end
end
