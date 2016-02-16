class AddAuthoremailToComments < ActiveRecord::Migration
  def change
    add_column :comments, :autoremail, :string
  end
end
