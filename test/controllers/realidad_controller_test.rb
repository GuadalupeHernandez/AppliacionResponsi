require 'test_helper'

class RealidadControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get realidad_index_url
    assert_response :success
  end

end
