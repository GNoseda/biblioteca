require 'test_helper'

class BooksControllerTest < ActionDispatch::IntegrationTest
  test 'book create' do
    
    30.times do |i|
      params = {
        title: "Title " + i.to_s,
        author: "Autor " + i.to_s,
        status: :Guardado,
        lend_time: DateTime.now,
        return_time: DateTime.now,
        lend_to: "Nobody"
      }
       
      post '/books', params: {book: params}
    end 
    assert_response :success
  end

#test "should get new" do
  ##  get books_new_url
  #  assert_response :success
  #end

  #test "should get create" do
  ##  get books_create_url
   # assert_response :success
  #end

  #test "should get edit" do
  #  get books_edit_url
  #  assert_response :success
  #end

  #test "should get update" do
  #  get books_update_url
  #  assert_response :success
  #end

  #test "should get destroy" do
  #  get books_destroy_url
  #  assert_response :success
  #end

end
