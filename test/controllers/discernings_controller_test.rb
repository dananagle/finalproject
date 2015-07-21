require 'test_helper'

class DiscerningsControllerTest < ActionController::TestCase
  setup do
    @discerning = discernings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:discernings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create discerning" do
    assert_difference('Discerning.count') do
      post :create, discerning: { appearance: @discerning.appearance, bone: @discerning.bone, carriage: @discerning.carriage, comment: @discerning.comment, distinctiveness: @discerning.distinctiveness, jenesaisquoi: @discerning.jenesaisquoi, personality: @discerning.personality, posture: @discerning.posture, presence: @discerning.presence, smile: @discerning.smile, structure: @discerning.structure, walk: @discerning.walk }
    end

    assert_redirected_to discerning_path(assigns(:discerning))
  end

  test "should show discerning" do
    get :show, id: @discerning
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @discerning
    assert_response :success
  end

  test "should update discerning" do
    patch :update, id: @discerning, discerning: { appearance: @discerning.appearance, bone: @discerning.bone, carriage: @discerning.carriage, comment: @discerning.comment, distinctiveness: @discerning.distinctiveness, jenesaisquoi: @discerning.jenesaisquoi, personality: @discerning.personality, posture: @discerning.posture, presence: @discerning.presence, smile: @discerning.smile, structure: @discerning.structure, walk: @discerning.walk }
    assert_redirected_to discerning_path(assigns(:discerning))
  end

  test "should destroy discerning" do
    assert_difference('Discerning.count', -1) do
      delete :destroy, id: @discerning
    end

    assert_redirected_to discernings_path
  end
end
