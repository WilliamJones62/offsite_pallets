require "application_system_test_case"

class OffsitePalletsTest < ApplicationSystemTestCase
  setup do
    @offsite_pallet = offsite_pallets(:one)
  end

  test "visiting the index" do
    visit offsite_pallets_url
    assert_selector "h1", text: "Offsite Pallets"
  end

  test "creating a Offsite pallet" do
    visit offsite_pallets_url
    click_on "New Offsite Pallet"

    click_on "Create Offsite pallet"

    assert_text "Offsite pallet was successfully created"
    click_on "Back"
  end

  test "updating a Offsite pallet" do
    visit offsite_pallets_url
    click_on "Edit", match: :first

    click_on "Update Offsite pallet"

    assert_text "Offsite pallet was successfully updated"
    click_on "Back"
  end

  test "destroying a Offsite pallet" do
    visit offsite_pallets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Offsite pallet was successfully destroyed"
  end
end
