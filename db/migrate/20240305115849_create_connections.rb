class CreateConnections < ActiveRecord::Migration[7.1]
  def change
    create_table :connections do |t|
      t.string :status
      t.belongs_to :mentee, foreign_key: true
      t.belongs_to :mentor, foreign_key: true
      t.timestamps
    end
  end
end
