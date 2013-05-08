class Calendar < ActiveRecord::Base
  belongs_to :ordo
  belongs_to :celebration

  attr_accessor :date



end
