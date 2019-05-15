class AddUseridToVoices < ActiveRecord::Migration[5.2]
  def change
    add_column :voices, :user_id, :integer
  end
end
