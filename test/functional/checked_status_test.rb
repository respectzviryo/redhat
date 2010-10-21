require 'test_helper'
class CheckedStatusControllerTest < ActionController::TestCase
  fixtures :tasks

  test("should change status") do
    post :change, :task_id => tasks(:one)
    assert_response :success
    assert_not_nil assigns(:tasks)
    assert_equal "finished", assigns(:tasks).status
  end
end
