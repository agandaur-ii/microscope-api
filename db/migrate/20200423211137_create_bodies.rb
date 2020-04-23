class CreateBodies < ActiveRecord::Migration[6.0]
  def change
    create_table :bodies do |t|
      t.string :description
      t.string :type
      t.text :content
      t.references :icon, null: false, foreign_key: true

      t.timestamps
    end
  end
end
