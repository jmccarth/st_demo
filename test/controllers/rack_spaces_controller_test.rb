require 'test_helper'

class RackSpacesControllerTest < ActionController::TestCase
  setup do
    @rack_space = rack_spaces(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rack_spaces)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rack_space" do
    assert_difference('RackSpace.count') do
      post :create, rack_space: { location_id: @rack_space.location_id, size: @rack_space.size }
    end

    assert_redirected_to rack_space_path(assigns(:rack_space))
  end

  test "should show rack_space" do
    get :show, id: @rack_space
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rack_space
    assert_response :success
  end

  test "should update rack_space" do
    patch :update, id: @rack_space, rack_space: { location_id: @rack_space.location_id, size: @rack_space.size }
    assert_redirected_to rack_space_path(assigns(:rack_space))
  end

  test "should destroy rack_space" do
    assert_difference('RackSpace.count', -1) do
      delete :destroy, id: @rack_space
    end

    assert_redirected_to rack_spaces_path
  end
end
