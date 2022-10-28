class AddRegisteredbyToCitizen < ActiveRecord::Migration[6.1]
  def change
    add_column :citizens, :registered_by, :integer
  end
end
