class Review < ApplicationRecord
  belongs_to :show

  validates :body, presence: true
  validates :score, presence: true
end
