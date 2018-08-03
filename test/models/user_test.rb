require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  describe "#full_name" do
    "returns the user's full name in the correct format" do
      @user.full_name.should eql "Josh Miller"
    end
  end
end
