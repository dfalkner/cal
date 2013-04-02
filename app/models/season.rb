class Season < ActiveRecord::Base
  has_many :celebrations

  validates :code, presence: true, uniqueness: true
  validates :name, presence: true, uniqueness: true
end
