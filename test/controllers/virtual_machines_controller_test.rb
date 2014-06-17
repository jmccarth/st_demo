require 'test_helper'

class VirtualMachinesControllerTest < ActionController::TestCase
  setup do
    @virtual_machine = virtual_machines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:virtual_machines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create virtual_machine" do
    assert_difference('VirtualMachine.count') do
      post :create, virtual_machine: { comments: @virtual_machine.comments, cpu: @virtual_machine.cpu, hd: @virtual_machine.hd, hostname: @virtual_machine.hostname, mem: @virtual_machine.mem, os: @virtual_machine.os, server_id: @virtual_machine.server_id, service_id: @virtual_machine.service_id }
    end

    assert_redirected_to virtual_machine_path(assigns(:virtual_machine))
  end

  test "should show virtual_machine" do
    get :show, id: @virtual_machine
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @virtual_machine
    assert_response :success
  end

  test "should update virtual_machine" do
    patch :update, id: @virtual_machine, virtual_machine: { comments: @virtual_machine.comments, cpu: @virtual_machine.cpu, hd: @virtual_machine.hd, hostname: @virtual_machine.hostname, mem: @virtual_machine.mem, os: @virtual_machine.os, server_id: @virtual_machine.server_id, service_id: @virtual_machine.service_id }
    assert_redirected_to virtual_machine_path(assigns(:virtual_machine))
  end

  test "should destroy virtual_machine" do
    assert_difference('VirtualMachine.count', -1) do
      delete :destroy, id: @virtual_machine
    end

    assert_redirected_to virtual_machines_path
  end
end
