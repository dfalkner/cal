class CreateColors < ActiveRecord::Migration
  def change
    create_table :colors do |t|
      t.string :code
      t.string :name

      t.timestamps
    end
  end
end
