class Celebration
  include Mongoid::Document
  include Mongoid::Timestamps
  field :label, type: String
  field :description, type: String
  field :rank, type: String
  field :color, type: String
  field :season, type: String
  field :ordo, type: String
  field :common, type: String
  field :rule, type: String


  validates :label, format: { with: /[a-z0-9_\-\.]*/ }, uniqueness: true, length: { minimum: 3, maximum: 50 }
  field :_id, type: String, default: ->{ label.to_s.parameterize }

  def to_s
    label
  end
end
