class Room < ApplicationRecord
  CATEGORIES = %i[
    standart
    lux
  ].freeze

  belongs_to :hotel, optional: true

  has_many :bookings

  scope :available, ->(from, till, city) { joins(:hotel).merge(Hotel.where(city: city)).exclude(Room.joins(:bookings).merge(Booking.where(date: from..till))) }
  scope :exclude, ->(ids) { where.not(id: ids) }
  enum category: CATEGORIES
end
