class CreateCalendars < ActiveRecord::Migration
  def change
    create_table :calendars do |t|
      t.date :date
      t.references :ordo, index: true
      t.references :celebration, index: true

      t.timestamps
    end
  end
end
