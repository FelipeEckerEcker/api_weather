require 'test_helper'

class HorasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hora = horas(:one)
  end

  test "should get index" do
    get horas_url, as: :json
    assert_response :success
  end

  test "should create hora" do
    assert_difference('Hora.count') do
      post horas_url, params: { hora: { nome: @hora.nome } }, as: :json
    end

    assert_response 201
  end

  test "should show hora" do
    get hora_url(@hora), as: :json
    assert_response :success
  end

  test "should update hora" do
    patch hora_url(@hora), params: { hora: { nome: @hora.nome } }, as: :json
    assert_response 200
  end

  test "should destroy hora" do
    assert_difference('Hora.count', -1) do
      delete hora_url(@hora), as: :json
    end

    assert_response 204
  end
end
