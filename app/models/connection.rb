class Connection < ApplicationRecord
  belongs_to :mentee
  belongs_to :mentor
  has_many :tasks
end
