class Connection < ApplicationRecord
  belongs_to :mentee
  belongs_to :mentor
  has_many :tasks, dependent: :destroy
  has_one :chatroom, dependent: :destroy
end
