class Mentor < ApplicationRecord
  belongs_to :user

  validates :job_title, presence: true
  validates :company, presence: true
end
