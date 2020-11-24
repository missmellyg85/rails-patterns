class CreatePatterns < ActiveRecord::Migration[6.0]
  def change
    create_table :patterns do |t|
      t.string :name
      t.string :brand

      t.timestamps
    end
  end
end
