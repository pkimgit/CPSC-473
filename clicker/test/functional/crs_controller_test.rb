require 'test_helper'

class CrsControllerTest < ActionController::TestCase
  setup do
    @cr = crs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:crs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cr" do
    assert_difference('Crs.count') do
      post :create, :cr => @cr.attributes
    end

    assert_redirected_to cr_path(assigns(:cr))
  end

  test "should show cr" do
    get :show, :id => @cr.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @cr.to_param
    assert_response :success
  end

  test "should update cr" do
    put :update, :id => @cr.to_param, :cr => @cr.attributes
    assert_redirected_to cr_path(assigns(:cr))
  end

  test "should destroy cr" do
    assert_difference('Crs.count', -1) do
      delete :destroy, :id => @cr.to_param
    end

    assert_redirected_to crs_index_path
  end
end
