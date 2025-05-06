require "test_helper"

class AuthorsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get authors_new_url
    assert_response :success
  end

  test "should get listAuthor" do
    get authors_listAuthor_url
    assert_response :success
  end

  test "should get editAuthor" do
    get authors_editAuthor_url
    assert_response :success
  end
end
