require "test_helper"

class BooksControllerTest < ActionDispatch::IntegrationTest
  test "should get newBook" do
    get books_newBook_url
    assert_response :success
  end

  test "should get listBooks" do
    get books_listBooks_url
    assert_response :success
  end

  test "should get editBook" do
    get books_editBook_url
    assert_response :success
  end
end
