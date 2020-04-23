class AddAncestryToBoards < ActiveRecord::Migration[6.0]
  def change
    add_column :boards, :ancestry, :string
    add_index :boards, :ancestry
  end
end
