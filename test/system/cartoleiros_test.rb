require "application_system_test_case"

class CartoleirosTest < ApplicationSystemTestCase
  setup do
    @cartoleiro = cartoleiros(:one)
  end

  test "visiting the index" do
    visit cartoleiros_url
    assert_selector "h1", text: "Cartoleiros"
  end

  test "should create cartoleiro" do
    visit cartoleiros_url
    click_on "New cartoleiro"

    check "Camisa" if @cartoleiro.camisa
    fill_in "Nome", with: @cartoleiro.nome
    fill_in "Time", with: @cartoleiro.time
    click_on "Create Cartoleiro"

    assert_text "Cartoleiro was successfully created"
    click_on "Back"
  end

  test "should update Cartoleiro" do
    visit cartoleiro_url(@cartoleiro)
    click_on "Edit this cartoleiro", match: :first

    check "Camisa" if @cartoleiro.camisa
    fill_in "Nome", with: @cartoleiro.nome
    fill_in "Time", with: @cartoleiro.time
    click_on "Update Cartoleiro"

    assert_text "Cartoleiro was successfully updated"
    click_on "Back"
  end

  test "should destroy Cartoleiro" do
    visit cartoleiro_url(@cartoleiro)
    click_on "Destroy this cartoleiro", match: :first

    assert_text "Cartoleiro was successfully destroyed"
  end
end
