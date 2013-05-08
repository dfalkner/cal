class CreateCelebrations < ActiveRecord::Migration
  def change
    create_table :celebrations do |t|
      t.string :code
      t.text :description
      t.references :rank, index: true
      t.references :color, index: true
      t.references :season, index: true
      t.references :ordo, index: true
      t.references :season, index: true
      t.references :common, index: true
      t.text :rule

      t.timestamps
    end
    add_index :celebrations, [:ordo_id, :code], unique: true
  end
end
