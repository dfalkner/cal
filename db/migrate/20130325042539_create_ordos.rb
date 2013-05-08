class CreateOrdos < ActiveRecord::Migration
  def change
    create_table :ordos do |t|
      t.string :code
      t.string :description

      t.timestamps
    end
  end
end
