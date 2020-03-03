class Sub < ApplicationRecord
  # assoic.
  # valid.
  # logic with data and table
  has_many :topics
  validates :name, presence: true
end
