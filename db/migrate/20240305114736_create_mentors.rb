class CreateMentors < ActiveRecord::Migration[7.1]
  def change
    create_table :mentors do |t|
      t.integer :rating
      t.string :job_title
      t.string :company
      t.belongs_to :user, foreign_key: true
      t.timestamps
    end
  end
end
