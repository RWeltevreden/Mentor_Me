class Review < ApplicationRecord
  belongs_to :mentor
  validates :rating, presence: true, inclusion: { in: 1..5 }

end
