class Car < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_by_brand, against: :brand
  belongs_to :user
  has_many_attached :photos
  validates :photos, :length => { :minimum => 3, :maximum => 3,
  too_short: ": not enough images must upload 3.",
  too_long: ": too many images must upload 3."
 }

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
