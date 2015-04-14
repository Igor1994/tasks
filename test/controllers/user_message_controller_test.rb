require 'test_helper'

class UserMessageControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "create" do

  	@user = User.new(email: "www@www.www", encrypted_password: "11111")
		@message = @user.posted_messages.create(text: "aaa", user_id: 1)

		assert true
	end
end
