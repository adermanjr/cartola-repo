require "application_system_test_case"

class PontuacaosTest < ApplicationSystemTestCase
  setup do
    @pontuacao = pontuacaos(:one)
  end

  test "visiting the index" do
    visit pontuacaos_url
    assert_selector "h1", text: "Pontuacaos"
  end

  test "should create pontuacao" do
    visit pontuacaos_url
    click_on "New pontuacao"

    fill_in "Cartoleiro", with: @pontuacao.cartoleiro_id
    fill_in "Pontos", with: @pontuacao.pontos
    fill_in "Posicao", with: @pontuacao.posicao
    fill_in "Rodada", with: @pontuacao.rodada_id
    click_on "Create Pontuacao"

    assert_text "Pontuacao was successfully created"
    click_on "Back"
  end

  test "should update Pontuacao" do
    visit pontuacao_url(@pontuacao)
    click_on "Edit this pontuacao", match: :first

    fill_in "Cartoleiro", with: @pontuacao.cartoleiro_id
    fill_in "Pontos", with: @pontuacao.pontos
    fill_in "Posicao", with: @pontuacao.posicao
    fill_in "Rodada", with: @pontuacao.rodada_id
    click_on "Update Pontuacao"

    assert_text "Pontuacao was successfully updated"
    click_on "Back"
  end

  test "should destroy Pontuacao" do
    visit pontuacao_url(@pontuacao)
    click_on "Destroy this pontuacao", match: :first

    assert_text "Pontuacao was successfully destroyed"
  end
end
