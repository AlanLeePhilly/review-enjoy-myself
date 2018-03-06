class Show < ApplicationRecord
  has_many :reviews

  validates :show_date, presence: true
  validates :location, presence: true
end
