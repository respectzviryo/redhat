require 'test_helper'

class LidsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lids)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lid" do
    assert_difference('Lid.count') do
      post :create, :lid => { }
    end

    assert_redirected_to lid_path(assigns(:lid))
  end

  test "should show lid" do
    get :show, :id => lids(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => lids(:one).to_param
    assert_response :success
  end

  test "should update lid" do
    put :update, :id => lids(:one).to_param, :lid => { }
    assert_redirected_to lid_path(assigns(:lid))
  end

  test "should destroy lid" do
    assert_difference('Lid.count', -1) do
      delete :destroy, :id => lids(:one).to_param
    end

    assert_redirected_to lids_path
  end
end
