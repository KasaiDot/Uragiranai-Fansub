class AddRedacteurToUsers < ActiveRecord::Migration
  def change
    add_column :users, :redacteur, :boolean
  end
end
