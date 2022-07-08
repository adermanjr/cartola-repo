require "test_helper"

class CartoleirosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cartoleiro = cartoleiros(:one)
  end

  test "should get index" do
    get cartoleiros_url
    assert_response :success
  end

  test "should get new" do
    get new_cartoleiro_url
    assert_response :success
  end

  test "should create cartoleiro" do
    assert_difference("Cartoleiro.count") do
      post cartoleiros_url, params: { cartoleiro: { camisa: @cartoleiro.camisa, nome: @cartoleiro.nome, time: @cartoleiro.time } }
    end

    assert_redirected_to cartoleiro_url(Cartoleiro.last)
  end

  test "should show cartoleiro" do
    get cartoleiro_url(@cartoleiro)
    assert_response :success
  end

  test "should get edit" do
    get edit_cartoleiro_url(@cartoleiro)
    assert_response :success
  end

  test "should update cartoleiro" do
    patch cartoleiro_url(@cartoleiro), params: { cartoleiro: { camisa: @cartoleiro.camisa, nome: @cartoleiro.nome, time: @cartoleiro.time } }
    assert_redirected_to cartoleiro_url(@cartoleiro)
  end

  test "should destroy cartoleiro" do
    assert_difference("Cartoleiro.count", -1) do
      delete cartoleiro_url(@cartoleiro)
    end

    assert_redirected_to cartoleiros_url
  end
end
