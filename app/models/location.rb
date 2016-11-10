class Location < ApplicationRecord
  validates_presence_of :name

  has_one :address, dependent: :destroy

  belongs_to :trip
end
