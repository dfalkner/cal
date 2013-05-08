class Celebration < ActiveRecord::Base
  belongs_to :rank
  belongs_to :color
  belongs_to :season
  belongs_to :ordo
  belongs_to :common

  validates :code, presence: true, uniqueness: true, length: { :minimum => 4 }
  validates :ordo_id, presence: true
  validates :rank_id, presence: true
  validates :rule, presence: true, length: { :minimum => 4 }
end
