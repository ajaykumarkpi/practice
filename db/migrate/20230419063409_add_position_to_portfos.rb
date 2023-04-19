class AddPositionToPortfos < ActiveRecord::Migration[5.2]
  def change
    add_column :portfos, :position, :integer
  end
end
