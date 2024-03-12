class AddMentorIdToReviews < ActiveRecord::Migration[7.1]
  def change
    add_column :reviews, :mentor_id, :integer
  end
end
