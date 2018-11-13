class CreatePalettes < ActiveRecord::Migration[5.1]
  def change
    create_table :palettes do |t|
      t.string :code
      t.integer :row
      t.integer :column
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
