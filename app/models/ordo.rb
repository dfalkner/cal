class Ordo
  include Mongoid::Document
  include Mongoid::Timestamps::Short
  field :name, type: String
  field :_id, type: String, default: ->{ name.to_s.parameterize }
  field :description, type: String
  field :classification, type: String
  field :orientation, type: String
  field :polity, type: String
  field :governance, type: String
  field :leader, type: String
  field :affiliation, type: String
  field :geographical_areas, type: String
  field :headquarters, type: String
  field :congregations, type: String
  field :members, type: String
  field :ministers, type: String
  field :official_website, type: String


  validates_format_of :name, :with => /[a-z0-9]*[_-]*\.*/
  validates :name, presence: true, uniqueness: true, format: { with: /[a-z0-9]*[_-]*\.*/ }
end
