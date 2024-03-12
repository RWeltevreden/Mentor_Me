class AddForeignKeyToReviews < ActiveRecord::Migration[7.1]
  def change
    add_foreign_key :reviews, :mentors
  end
end
