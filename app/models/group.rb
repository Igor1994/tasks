class Group < ActiveRecord::Base

	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

	belongs_to :host_user, class_name: 'User'

	has_many :group_memberships, foreign_key: :joined_in_group_id
	has_many :members, through: :group_memberships

	has_many :posts, class_name: 'UserMessage', foreign_key: :group_id

end
