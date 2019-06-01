require 'test_helper'

class TemposControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tempo = tempos(:one)
  end

  test "should get index" do
    get tempos_url, as: :json
    assert_response :success
  end

  test "should create tempo" do
    assert_difference('Tempo.count') do
      post tempos_url, params: { tempo: { nome: @tempo.nome } }, as: :json
    end

    assert_response 201
  end

  test "should show tempo" do
    get tempo_url(@tempo), as: :json
    assert_response :success
  end

  test "should update tempo" do
    patch tempo_url(@tempo), params: { tempo: { nome: @tempo.nome } }, as: :json
    assert_response 200
  end

  test "should destroy tempo" do
    assert_difference('Tempo.count', -1) do
      delete tempo_url(@tempo), as: :json
    end

    assert_response 204
  end
end
