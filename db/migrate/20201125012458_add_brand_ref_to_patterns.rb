class AddBrandRefToPatterns < ActiveRecord::Migration[6.0]
  def change
    add_reference :patterns, :brand, null: true, foreign_key: true
  end
end
