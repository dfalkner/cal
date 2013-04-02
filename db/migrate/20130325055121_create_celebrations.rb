class CreateCelebrations < ActiveRecord::Migration
  def change
    create_table :celebrations do |t|
      t.string :label
      t.text :description
      t.references :rank, index: true
      t.references :color, index: true
      t.references :season, index: true
      t.references :ordo, index: true
      t.string :kind
      t.string :rule

      t.timestamps
    end
    add_index :celebrations, [:ordo_id, :label], unique: true
  end
end
