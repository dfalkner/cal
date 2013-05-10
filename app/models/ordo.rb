class Ordo
  include Mongoid::Document
  include Mongoid::Timestamps
  field :label, type: String
  field :description, type: String

  attr_accessible :label, :description

  validates :label, format: { with: /[a-z0-9_\-\.]*/ }, uniqueness: true, length: { minimum: 3, maximum: 50 }
  field :_id, type: String, default: ->{ label.to_s.parameterize }

  def to_s
    label
  end
end
