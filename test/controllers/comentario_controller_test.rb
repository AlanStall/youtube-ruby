require "test_helper"

class ComentarioControllerTest < ActionDispatch::IntegrationTest
  test "should get text" do
    get comentario_text_url
    assert_response :success
  end
end
