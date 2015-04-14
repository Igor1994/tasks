class AddPersonalInfotmationToUsers < ActiveRecord::Migration
  def change

  	add_column :users, :current_town, :string
  	add_column :users, :mobile_number, :string
  	add_column :users, :family_status, :string
  	add_column :users, :interests, :string

  end
end
