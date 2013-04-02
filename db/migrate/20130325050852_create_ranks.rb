class CreateRanks < ActiveRecord::Migration
  def change
    create_table :ranks do |t|
      t.string :code
      t.string :name

      t.timestamps
    end
  end
end
