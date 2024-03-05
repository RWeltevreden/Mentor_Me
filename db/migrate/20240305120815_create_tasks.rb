class CreateTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :description
      t.boolean :completed
      t.date :end_date
      t.belongs_to :connection, foreign_key: true
      t.timestamps
    end
  end
end
