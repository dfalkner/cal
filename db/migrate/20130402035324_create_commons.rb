class CreateCommons < ActiveRecord::Migration
  def change
    create_table :commons do |t|
      t.string :code
      t.string :name

      t.timestamps
    end
  end
end
