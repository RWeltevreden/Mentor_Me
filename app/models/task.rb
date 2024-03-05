class Task < ApplicationRecord
  belongs_to :connection

  validates :end_date, presence: true
  validates :title, presence: true
  validates :description, presence: true
end
