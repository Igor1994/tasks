class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
    	
    	t.integer :host_user_id
    	t.string :name
    	t.string :description

      t.timestamps
      
    end
  end
end
