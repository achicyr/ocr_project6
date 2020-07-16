require "application_system_test_case"

class ActivityControllersTest < ApplicationSystemTestCase
  setup do
    @activity_controller = activity_controllers(:one)
  end

  test "visiting the index" do
    visit activity_controllers_url
    assert_selector "h1", text: "Activity Controllers"
  end

  test "creating a Activity controller" do
    visit activity_controllers_url
    click_on "New Activity Controller"

    click_on "Create Activity controller"

    assert_text "Activity controller was successfully created"
    click_on "Back"
  end

  test "updating a Activity controller" do
    visit activity_controllers_url
    click_on "Edit", match: :first

    click_on "Update Activity controller"

    assert_text "Activity controller was successfully updated"
    click_on "Back"
  end

  test "destroying a Activity controller" do
    visit activity_controllers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Activity controller was successfully destroyed"
  end
end
