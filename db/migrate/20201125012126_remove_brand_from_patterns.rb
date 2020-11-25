class RemoveBrandFromPatterns < ActiveRecord::Migration[6.0]
  def change
    remove_column :patterns, :brand, :string
  end
end
