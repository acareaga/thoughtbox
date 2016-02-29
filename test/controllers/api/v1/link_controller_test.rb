require 'test_helper'

class Api::V1::LinkControllerTest < ActionController::TestCase

  test '#index responds to json' do
     get :index, format: :json
     assert_response :success
   end
end
