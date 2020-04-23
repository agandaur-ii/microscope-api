class AddAncestryToIcons < ActiveRecord::Migration[6.0]
  def change
    add_column :icons, :ancestry, :string
    add_index :icons, :ancestry
  end
end
