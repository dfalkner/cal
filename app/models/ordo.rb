class Ordo < ActiveRecord::Base
  has_many :celebrations

  validates :code, presence: true, uniqueness: true

end
