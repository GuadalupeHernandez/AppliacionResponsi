require 'test_helper'

class GeolocalizacionControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get geolocalizacion_index_url
    assert_response :success
  end

end
