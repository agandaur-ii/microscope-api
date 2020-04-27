class ChangeTypeToBodyTypeInBodies < ActiveRecord::Migration[6.0]
  def change
    rename_column :bodies, :type, :body_type
  end
end
