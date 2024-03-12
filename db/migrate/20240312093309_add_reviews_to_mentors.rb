class AddReviewsToMentors < ActiveRecord::Migration[7.1]
  def change
    add_column :mentors, :reviews, :text
  end
end
