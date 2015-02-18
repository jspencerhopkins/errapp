require 'test_helper'

class ComerrsControllerTest < ActionController::TestCase
  setup do
    @comerr = comerrs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comerrs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comerr" do
    assert_difference('Comerr.count') do
      post :create, comerr: { description: @comerr.description, message: @comerr.message, resolution: @comerr.resolution }
    end

    assert_redirected_to comerr_path(assigns(:comerr))
  end

  test "should show comerr" do
    get :show, id: @comerr
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comerr
    assert_response :success
  end

  test "should update comerr" do
    patch :update, id: @comerr, comerr: { description: @comerr.description, message: @comerr.message, resolution: @comerr.resolution }
    assert_redirected_to comerr_path(assigns(:comerr))
  end

  test "should destroy comerr" do
    assert_difference('Comerr.count', -1) do
      delete :destroy, id: @comerr
    end

    assert_redirected_to comerrs_path
  end
end
