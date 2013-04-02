class AddPositionToRank < ActiveRecord::Migration
  def change
    add_column :ranks, :position, :integer
  end
end
