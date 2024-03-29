require "application_system_test_case"

class RipplesTest < ApplicationSystemTestCase
  setup do
    @ripple = ripples(:one)
  end

  test "visiting the index" do
    visit ripples_url
    assert_selector "h1", text: "Ripples"
  end

  test "creating a Ripple" do
    visit ripples_url
    click_on "New Ripple"

    fill_in "Date posted", with: @ripple.date_posted
    fill_in "Message", with: @ripple.message
    fill_in "Name", with: @ripple.name
    fill_in "Url", with: @ripple.url
    click_on "Create Ripple"

    assert_text "Ripple was successfully created"
    click_on "Back"
  end

  test "updating a Ripple" do
    visit ripples_url
    click_on "Edit", match: :first

    fill_in "Date posted", with: @ripple.date_posted
    fill_in "Message", with: @ripple.message
    fill_in "Name", with: @ripple.name
    fill_in "Url", with: @ripple.url
    click_on "Update Ripple"

    assert_text "Ripple was successfully updated"
    click_on "Back"
  end

  test "destroying a Ripple" do
    visit ripples_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ripple was successfully destroyed"
  end
end
