class RenameUsersIdToUserId < ActiveRecord::Migration[6.1]
  def change
    rename_column :user_data, :users_id, :user_id
  end
end
