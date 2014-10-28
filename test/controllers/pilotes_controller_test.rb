require 'test_helper'

class PilotesControllerTest < ActionController::TestCase
  setup do
    @pilote = pilotes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pilotes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pilote" do
    assert_difference('Pilote.count') do
      post :create, pilote: { age: @pilote.age, name: @pilote.name }
    end

    assert_redirected_to pilote_path(assigns(:pilote))
  end

  test "should show pilote" do
    get :show, id: @pilote
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pilote
    assert_response :success
  end

  test "should update pilote" do
    patch :update, id: @pilote, pilote: { age: @pilote.age, name: @pilote.name }
    assert_redirected_to pilote_path(assigns(:pilote))
  end

  test "should destroy pilote" do
    assert_difference('Pilote.count', -1) do
      delete :destroy, id: @pilote
    end

    assert_redirected_to pilotes_path
  end
end
