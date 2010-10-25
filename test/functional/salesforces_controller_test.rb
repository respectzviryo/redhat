require 'test_helper'

class SalesforcesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:salesforces)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create salesforce" do
    assert_difference('Salesforce.count') do
      post :create, :salesforce => { }
    end

    assert_redirected_to salesforce_path(assigns(:salesforce))
  end

  test "should show salesforce" do
    get :show, :id => salesforces(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => salesforces(:one).to_param
    assert_response :success
  end

  test "should update salesforce" do
    put :update, :id => salesforces(:one).to_param, :salesforce => { }
    assert_redirected_to salesforce_path(assigns(:salesforce))
  end

  test "should destroy salesforce" do
    assert_difference('Salesforce.count', -1) do
      delete :destroy, :id => salesforces(:one).to_param
    end

    assert_redirected_to salesforces_path
  end
end
