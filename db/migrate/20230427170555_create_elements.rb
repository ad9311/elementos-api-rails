class CreateElements < ActiveRecord::Migration[7.0]
  def up
    create_table :elements do |t|
      t.string :symbol, null: false
      t.string :name, null: false
      t.integer :atomic_number, null: false
      t.float :atomic_weight, null: false
      t.integer :series, null: false
      t.string :series_color, null: false
      t.text :description, null: false
      t.integer :state, null: false
      t.integer :group, null: false
      t.integer :period, null: false
      t.text :info_url, null: false
      t.float :density
      t.float :melting_point
      t.float :boiling_point
      t.integer :year_discovered

      t.timestamps
    end

    add_index :elements, :symbol, unique: true
    add_index :elements, :name, unique: true
    add_index :elements, :atomic_number, unique: true
  end

  def down
    drop_table :elements
  end
end
