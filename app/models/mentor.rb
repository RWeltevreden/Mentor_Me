class Mentor < ApplicationRecord
  belongs_to :user
  has_many :connections, dependent: :destroy

  validates :job_title, presence: true
  validates :company, presence: true
end
