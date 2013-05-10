class Calendar
  include Mongoid::Document
  include Mongoid::Timestamps
  field :day, type: Date

  field :ordo, type: String

  embeds_many :celebrations

  field :_id, type: String, default: ->{ day.to_s.parameterize }

  def to_s
    day.to_s
  end

end
