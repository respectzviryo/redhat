require 'test_helper'

class ExperimentalsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:experimentals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create experimental" do
    assert_difference('Experimental.count') do
      post :create, :experimental => { }
    end

    assert_redirected_to experimental_path(assigns(:experimental))
  end

  test "should show experimental" do
    get :show, :id => experimentals(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => experimentals(:one).to_param
    assert_response :success
  end

  test "should update experimental" do
    put :update, :id => experimentals(:one).to_param, :experimental => { }
    assert_redirected_to experimental_path(assigns(:experimental))
  end

  test "should destroy experimental" do
    assert_difference('Experimental.count', -1) do
      delete :destroy, :id => experimentals(:one).to_param
    end

    assert_redirected_to experimentals_path
  end
end
