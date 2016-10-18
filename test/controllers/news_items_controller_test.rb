require 'test_helper'

class NewsItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get news_items_index_url
    assert_response :success
  end

  test "should get show" do
    get news_items_show_url
    assert_response :success
  end

end
