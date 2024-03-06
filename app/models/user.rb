class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def role
    if Mentor.find_by(user_id: id)
      return "mentor"
    elsif Mentee.find_by(user_id: id)
      return "mentee"
    end
  end
  validates :first_name, presence: true
  validates :last_name, presence: true

  has_one :mentor
  has_one :mentee

  def is_mentor?
    self.mentor != nil
  end

  def is_mentee?
    self.mentee != nil
  end

end
