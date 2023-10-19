class AddConfirmableToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :confirmation_token, :string
    add_column :users, :confirmed_at, :datetime
    add_column :users, :confirmation_sent_at, :datetime
    add_column :users, :unconfirmed_email, :string

    add_index :users, :confirmation_token, unique: true

    # 既存の全ユーザーを確認済みとする
    User.update_all(confirmed_at: Time.now)
  end
end
