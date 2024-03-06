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
end
