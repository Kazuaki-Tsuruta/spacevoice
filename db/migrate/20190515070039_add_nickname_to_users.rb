class AddNicknameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :nickname, :users, :string
  end
end
