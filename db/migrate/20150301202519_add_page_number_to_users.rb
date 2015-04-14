class AddPageNumberToUsers < ActiveRecord::Migration
  def change
    add_column :users, :page_number, :int
  end
end
