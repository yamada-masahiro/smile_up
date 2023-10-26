class CreateReporters < ActiveRecord::Migration[7.0]
  def change
    create_table :reporters do |t|
      t.string :name
      t.string :furigana
      t.integer :medium_id
      t.integer :degree_of_welcome

      t.timestamps
    end
    add_index :reporters, :furigana
    add_index :reporters, :medium_id
    add_index :reporters, :degree_of_welcome
  end
end
