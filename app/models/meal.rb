class Meal < ApplicationRecord
  belongs_to :user, optional: true
  validates :name, presence: true
  validates :description, presence: true

  def average_rating
    ratings.average(:value)&.round(1) || "No ratings yet"
  end
end
