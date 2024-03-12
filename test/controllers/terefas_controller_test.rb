require "test_helper"

class TerefasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @terefa = terefas(:one)
  end

  test "should get index" do
    get terefas_url
    assert_response :success
  end

  test "should get new" do
    get new_terefa_url
    assert_response :success
  end

  test "should create terefa" do
    assert_difference("Terefa.count") do
      post terefas_url, params: { terefa: { description: @terefa.description, title: @terefa.title, user_id: @terefa.user_id } }
    end

    assert_redirected_to terefa_url(Terefa.last)
  end

  test "should show terefa" do
    get terefa_url(@terefa)
    assert_response :success
  end

  test "should get edit" do
    get edit_terefa_url(@terefa)
    assert_response :success
  end

  test "should update terefa" do
    patch terefa_url(@terefa), params: { terefa: { description: @terefa.description, title: @terefa.title, user_id: @terefa.user_id } }
    assert_redirected_to terefa_url(@terefa)
  end

  test "should destroy terefa" do
    assert_difference("Terefa.count", -1) do
      delete terefa_url(@terefa)
    end

    assert_redirected_to terefas_url
  end
end
