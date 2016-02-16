class AddUserIdToForceds < ActiveRecord::Migration
  def change
    add_column :forceds, :user_id, :integer
  end
end
