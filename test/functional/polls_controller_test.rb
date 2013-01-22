require File.expand_path('../../test_helper', __FILE__)

class PollsControllerTest < ActionController::TestCase
  fixtures :projects

  def test_index
    get :index, :project_id => 1

    assert_response 'success'
    assert_template 'index'

  # Replace this with your real tests.
#  def test_truth
   # assert true
  end
end
