class Mentee < ApplicationRecord
  belongs_to :user

  has_one :connection, dependent: :destroy
  validates :goal, presence: true

  def index
    @mentors = Mentor.all
  end
end
