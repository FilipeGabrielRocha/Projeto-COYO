require "test_helper"

class UnidadesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @unidade = unidades(:one)
  end

  test "should get index" do
    get unidades_url, as: :json
    assert_response :success
  end

  test "should create unidade" do
    assert_difference("Unidade.count") do
      post unidades_url, params: { unidade: { descricao: @unidade.descricao, sigla: @unidade.sigla } }, as: :json
    end

    assert_response :created
  end

  test "should show unidade" do
    get unidade_url(@unidade), as: :json
    assert_response :success
  end

  test "should update unidade" do
    patch unidade_url(@unidade), params: { unidade: { descricao: @unidade.descricao, sigla: @unidade.sigla } }, as: :json
    assert_response :success
  end

  test "should destroy unidade" do
    assert_difference("Unidade.count", -1) do
      delete unidade_url(@unidade), as: :json
    end

    assert_response :no_content
  end
end
