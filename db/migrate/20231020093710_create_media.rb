class CreateMedia < ActiveRecord::Migration[7.0]
  def change
    create_table :media do |t|
      t.string :name, null: false
      t.string :furigana, null: false
      t.string :website_url

      t.timestamps
    end
    add_index :media, :furigana
  end
end
