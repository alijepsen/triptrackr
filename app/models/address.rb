class Address < ApplicationRecord
  validates_presence_of :street, :city, :state, :postal, :country

  belongs_to :location
end
