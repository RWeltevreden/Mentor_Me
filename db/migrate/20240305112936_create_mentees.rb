class CreateMentees < ActiveRecord::Migration[7.1]
  def change
    create_table :mentees do |t|
      t.string :goal
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
