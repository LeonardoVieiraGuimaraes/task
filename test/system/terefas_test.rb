require "application_system_test_case"

class TerefasTest < ApplicationSystemTestCase
  setup do
    @terefa = terefas(:one)
  end

  test "visiting the index" do
    visit terefas_url
    assert_selector "h1", text: "Terefas"
  end

  test "should create terefa" do
    visit terefas_url
    click_on "New terefa"

    fill_in "Description", with: @terefa.description
    fill_in "Title", with: @terefa.title
    fill_in "User", with: @terefa.user_id
    click_on "Create Terefa"

    assert_text "Terefa was successfully created"
    click_on "Back"
  end

  test "should update Terefa" do
    visit terefa_url(@terefa)
    click_on "Edit this terefa", match: :first

    fill_in "Description", with: @terefa.description
    fill_in "Title", with: @terefa.title
    fill_in "User", with: @terefa.user_id
    click_on "Update Terefa"

    assert_text "Terefa was successfully updated"
    click_on "Back"
  end

  test "should destroy Terefa" do
    visit terefa_url(@terefa)
    click_on "Destroy this terefa", match: :first

    assert_text "Terefa was successfully destroyed"
  end
end
