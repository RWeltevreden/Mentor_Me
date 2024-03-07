class Mentee < ApplicationRecord
  belongs_to :user
  has_many :connections

  validates :goal, presence: true
end
