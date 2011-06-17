require 'test_helper'

class FriendlistsControllerTest < ActionController::TestCase
  setup do
    @friendlist = friendlists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:friendlists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create friendlist" do
    assert_difference('Friendlist.count') do
      post :create, :friendlist => @friendlist.attributes
    end

    assert_redirected_to friendlist_path(assigns(:friendlist))
  end

  test "should show friendlist" do
    get :show, :id => @friendlist.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @friendlist.to_param
    assert_response :success
  end

  test "should update friendlist" do
    put :update, :id => @friendlist.to_param, :friendlist => @friendlist.attributes
    assert_redirected_to friendlist_path(assigns(:friendlist))
  end

  test "should destroy friendlist" do
    assert_difference('Friendlist.count', -1) do
      delete :destroy, :id => @friendlist.to_param
    end

    assert_redirected_to friendlists_path
  end
end
