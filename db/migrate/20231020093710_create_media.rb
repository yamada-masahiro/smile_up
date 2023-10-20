class CreateMedia < ActiveRecord::Migration[7.0]
  def change
    create_table :media do |t|
      t.string :name
      t.string :furigana
      t.string :website_url

      t.timestamps
    end
    add_index :media, :furigana
  end
end
