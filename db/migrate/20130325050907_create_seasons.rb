class CreateSeasons < ActiveRecord::Migration
  def change
    create_table :seasons do |t|
      t.string :code
      t.string :name

      t.timestamps
    end
  end
end
