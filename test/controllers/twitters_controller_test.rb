require 'test_helper'

class TwittersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get twitters_index_url
    assert_response :success
  end

end
