class ChangeStatusToBoolean < ActiveRecord::Migration[7.1]
  def change
    change_column :connections, :status, :boolean, using: 'status::boolean'
  end
end
