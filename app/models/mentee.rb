class Mentee < ApplicationRecord
  belongs_to :user
  validates :goal, presence: true

  def index
    @mentors = Mentor.all
  end
end
