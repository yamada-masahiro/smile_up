class CreateReporters < ActiveRecord::Migration[7.0]
  def change
    create_table :reporters do |t|
      t.string :name, null: false
      t.string :furigana, null: false
      t.boolean :independent, null: false, default: false
      t.references :medium, null: true, foreign_key: true
      t.integer :desirability, null: false, default: 0

      t.timestamps
    end
    add_index :reporters, :furigana
    add_index :reporters, :desirability
  end
end
