class AddQctextToProgressions < ActiveRecord::Migration
  def change
    add_column :progressions, :qctext, :integer
  end
end
