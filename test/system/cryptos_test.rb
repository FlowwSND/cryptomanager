require "application_system_test_case"

class CryptosTest < ApplicationSystemTestCase
  setup do
    @crypto = cryptos(:one)
  end

  test "visiting the index" do
    visit cryptos_url
    assert_selector "h1", text: "Cryptos"
  end

  test "creating a Crypto" do
    visit cryptos_url
    click_on "New Crypto"

    fill_in "Abbreviation", with: @crypto.abbreviation
    fill_in "Date", with: @crypto.date
    fill_in "Name", with: @crypto.name
    fill_in "Quantity", with: @crypto.quantity
    fill_in "Value", with: @crypto.value
    click_on "Create Crypto"

    assert_text "Crypto was successfully created"
    click_on "Back"
  end

  test "updating a Crypto" do
    visit cryptos_url
    click_on "Edit", match: :first

    fill_in "Abbreviation", with: @crypto.abbreviation
    fill_in "Date", with: @crypto.date
    fill_in "Name", with: @crypto.name
    fill_in "Quantity", with: @crypto.quantity
    fill_in "Value", with: @crypto.value
    click_on "Update Crypto"

    assert_text "Crypto was successfully updated"
    click_on "Back"
  end

  test "destroying a Crypto" do
    visit cryptos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Crypto was successfully destroyed"
  end
end
