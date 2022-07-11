require "application_system_test_case"

class RodadasTest < ApplicationSystemTestCase
  setup do
    @rodada = rodadas(:one)
  end

  test "visiting the index" do
    visit rodadas_url
    assert_selector "h1", text: "Rodadas"
  end

  test "should create rodada" do
    visit rodadas_url
    click_on "New rodada"

    fill_in "Nome", with: @rodada.nome
    click_on "Create Rodada"

    assert_text "Rodada was successfully created"
    click_on "Back"
  end

  test "should update Rodada" do
    visit rodada_url(@rodada)
    click_on "Edit this rodada", match: :first

    fill_in "Nome", with: @rodada.nome
    click_on "Update Rodada"

    assert_text "Rodada was successfully updated"
    click_on "Back"
  end

  test "should destroy Rodada" do
    visit rodada_url(@rodada)
    click_on "Destroy this rodada", match: :first

    assert_text "Rodada was successfully destroyed"
  end
end
