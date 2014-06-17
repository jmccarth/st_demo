require 'test_helper'

class StorageSpacesControllerTest < ActionController::TestCase
  setup do
    @storage_space = storage_spaces(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:storage_spaces)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create storage_space" do
    assert_difference('StorageSpace.count') do
      post :create, storage_space: { amount: @storage_space.amount, comments: @storage_space.comments, server_id: @storage_space.server_id, service_id: @storage_space.service_id }
    end

    assert_redirected_to storage_space_path(assigns(:storage_space))
  end

  test "should show storage_space" do
    get :show, id: @storage_space
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @storage_space
    assert_response :success
  end

  test "should update storage_space" do
    patch :update, id: @storage_space, storage_space: { amount: @storage_space.amount, comments: @storage_space.comments, server_id: @storage_space.server_id, service_id: @storage_space.service_id }
    assert_redirected_to storage_space_path(assigns(:storage_space))
  end

  test "should destroy storage_space" do
    assert_difference('StorageSpace.count', -1) do
      delete :destroy, id: @storage_space
    end

    assert_redirected_to storage_spaces_path
  end
end
