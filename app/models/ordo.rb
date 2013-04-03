class Ordo < ActiveRecord::Base
  has_many :celebrations

  validates :label, presence: true, uniqueness: true

end
