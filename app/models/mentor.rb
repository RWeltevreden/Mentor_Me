class Mentor < ApplicationRecord
  belongs_to :user
  has_one :connection, dependent: :destroy
  has_many :reviews, dependent: :destroy

  validates :job_title, presence: true
  validates :company, presence: true
end
