class Trip < ApplicationRecord
  # validations
  validates_presence_of :name, :from, :to

  # call backs

  # associations
  has_many :locations, dependent: :destroy

  # instance methods
  def info
    "Trip #{name} was taken from: #{from} to: #{to}"
  end

  # class methods
  def self.by_name
    order(:name)
  end

end
