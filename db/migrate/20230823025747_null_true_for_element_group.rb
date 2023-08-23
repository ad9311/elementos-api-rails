class NullTrueForElementGroup < ActiveRecord::Migration[7.0]
  def change
    change_column :elements, :group, :float, null: true
  end
end
