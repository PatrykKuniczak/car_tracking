class AddDefaultForUsersType < ActiveRecord::Migration[8.0]
  def change
    change_column_default :users, :type, from: "", to: "Employee"
  end
end
