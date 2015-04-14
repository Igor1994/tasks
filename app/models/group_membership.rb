class GroupMembership < ActiveRecord::Base

	belongs_to :member, class_name: 'User'
	belongs_to :joined_in_group, class_name: 'Group'

end
