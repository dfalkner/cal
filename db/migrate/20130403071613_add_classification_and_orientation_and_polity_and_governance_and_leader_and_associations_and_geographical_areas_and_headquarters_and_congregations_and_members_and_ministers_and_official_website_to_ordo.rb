class AddClassificationAndOrientationAndPolityAndGovernanceAndLeaderAndAssociationsAndGeographicalAreasAndHeadquartersAndCongregationsAndMembersAndMinistersAndOfficialWebsiteToOrdo < ActiveRecord::Migration
  def change
    add_column :ordos, :classification, :string
    add_column :ordos, :orientation, :string
    add_column :ordos, :polity, :string
    add_column :ordos, :governance, :string
    add_column :ordos, :leader, :string
    add_column :ordos, :associations, :string
    add_column :ordos, :geographical_areas, :string
    add_column :ordos, :headquarters, :string
    add_column :ordos, :congregations, :integer
    add_column :ordos, :members, :integer
    add_column :ordos, :ministers, :integer
    add_column :ordos, :official_website, :string
  end
end
