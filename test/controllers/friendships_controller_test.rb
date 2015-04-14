require 'test_helper'

class FriendshipsControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "create" do
  	@user = User.new(email: "www@www.www", encrypted_password: "11111")
		@friendship = @user.friendships.new(friend_id: 1)

		@friendship.save

		assert true
	end

	test "destroy" do
		@friendship = Friendship.new(user_id: 1, friend_id: 2)
		@friendship.destroy

		assert true
	end
end
