require 'test_helper'

class OrderedAdditionalliesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ordered_additionallies_index_url
    assert_response :success
  end

end
