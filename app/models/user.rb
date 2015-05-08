class User < ActiveRecord::Base

	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "175x175#", little: "50x50#"  }
  crop_attached_file :avatar

    do_not_validate_attachment_file_type :avatar
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :nickname, uniqueness: true

  has_many :user_messages
  has_many :posted_messages, class_name: "UserMessage", foreign_key: :poster_id

  has_many :friendships
  has_many :friends, through: :friendships
  has_many :inverse_friendships, class_name: "Friendship", foreign_key: "friend_id"
  has_many :inverse_friends, through: :inverse_friendships, source: :user

  has_many :likes, foreign_key: :liker_id
  has_many :liked_messages, through: :likes

  has_many :hosted_groups, class_name: 'Group', foreign_key: :host_user_id
  has_many :group_memberships, foreign_key: :member_id
  has_many :joined_in_groups, through: :group_memberships

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.password = auth.uid
      user.email = "vasya@gmail.com"
      user.nickname = auth.info.name
      user.save!
    end
  end



end
