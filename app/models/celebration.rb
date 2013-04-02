class Celebration < ActiveRecord::Base
  belongs_to :rank
  belongs_to :color
  belongs_to :season
  belongs_to :ordo

  validates :label, presence: true, uniqueness: true, length: { :minimum => 4 }
  validates :ordo_id, presence: true
  validates :rank_id, presence: true
  validates :rule, presence: true, uniqueness: true, length: { :minimum => 4 }
  validates :kind_id, presence: true
end
