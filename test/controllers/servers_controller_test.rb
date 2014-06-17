require 'test_helper'

class ServersControllerTest < ActionController::TestCase
  setup do
    @server = servers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:servers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create server" do
    assert_difference('Server.count') do
      post :create, server: { cpu: @server.cpu, hd: @server.hd, location_id: @server.location_id, mem: @server.mem, model: @server.model, name: @server.name, os: @server.os, service_id: @server.service_id, size: @server.size }
    end

    assert_redirected_to server_path(assigns(:server))
  end

  test "should show server" do
    get :show, id: @server
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @server
    assert_response :success
  end

  test "should update server" do
    patch :update, id: @server, server: { cpu: @server.cpu, hd: @server.hd, location_id: @server.location_id, mem: @server.mem, model: @server.model, name: @server.name, os: @server.os, service_id: @server.service_id, size: @server.size }
    assert_redirected_to server_path(assigns(:server))
  end

  test "should destroy server" do
    assert_difference('Server.count', -1) do
      delete :destroy, id: @server
    end

    assert_redirected_to servers_path
  end
end
