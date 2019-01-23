require 'test_helper'

class BuscadorControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get buscador_index_url
    assert_response :success
  end

end
