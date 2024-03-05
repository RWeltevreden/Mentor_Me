class CreateRejecteds < ActiveRecord::Migration[7.1]
  def change
    create_table :rejecteds do |t|
      t.belongs_to :mentee, foreign_key: true
      t.belongs_to :mentor, foreign_key: true
      t.timestamps
    end
  end
end
