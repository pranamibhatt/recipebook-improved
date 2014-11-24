require 'test_helper'

class GroceryListsControllerTest < ActionController::TestCase
  setup do
    @grocery_list = grocery_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:grocery_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create grocery_list" do
    assert_difference('GroceryList.count') do
      post :create, grocery_list: { list: @grocery_list.list, listname: @grocery_list.listname }
    end

    assert_redirected_to grocery_list_path(assigns(:grocery_list))
  end

  test "should show grocery_list" do
    get :show, id: @grocery_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @grocery_list
    assert_response :success
  end

  test "should update grocery_list" do
    patch :update, id: @grocery_list, grocery_list: { list: @grocery_list.list, listname: @grocery_list.listname }
    assert_redirected_to grocery_list_path(assigns(:grocery_list))
  end

  test "should destroy grocery_list" do
    assert_difference('GroceryList.count', -1) do
      delete :destroy, id: @grocery_list
    end

    assert_redirected_to grocery_lists_path
  end
end
