require 'test_helper'

class LikesControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "create" do
  	@user = User.new(email: "www@www.www", encrypted_password: "11111")
		@like = @user.likes.new(liked_message_id: 1)

		@like.save
		
		assert true
	end

	test "destroy" do
		@user = User.new(email: "www@www.www", encrypted_password: "11111")
		@like = @user.likes.new(liked_message_id: 1)

		@like.first.destroy

		assert true
	end
end
