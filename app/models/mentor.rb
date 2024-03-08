class Mentor < ApplicationRecord
  belongs_to :user
  has_many :connections

  validates :job_title, presence: true
  validates :company, presence: true
end
