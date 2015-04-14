class CreateGroupMemberships < ActiveRecord::Migration
  def change
    create_table :group_memberships do |t|

    	t.integer :member_id
    	t.integer :joined_in_group_id

      t.timestamps
      
    end
  end
end
