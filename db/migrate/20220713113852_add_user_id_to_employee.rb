class AddUserIdToEmployee < ActiveRecord::Migration[6.1]
  def change
    add_reference :employees, :user, index: { unique: true },foreign_key: true
    add_column :employees, :designation, :string
  end
end
