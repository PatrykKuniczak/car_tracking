class CreateUsersData < ActiveRecord::Migration[8.0]
  def change
    create_table :user_data do |t|
      t.string :name
      t.string :surname
      t.integer :age
      t.boolean :driving_licence
      t.string :position

      t.belongs_to :users
      t.timestamps
    end
  end
end
