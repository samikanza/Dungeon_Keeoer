require 'test_helper'

class UltraEvilWitchesControllerTest < ActionController::TestCase
  setup do
    @ultra_evil_witch = ultra_evil_witches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ultra_evil_witches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ultra_evil_witch" do
    assert_difference('UltraEvilWitch.count') do
      post :create, :ultra_evil_witch => @ultra_evil_witch.attributes
    end

    assert_redirected_to ultra_evil_witch_path(assigns(:ultra_evil_witch))
  end

  test "should show ultra_evil_witch" do
    get :show, :id => @ultra_evil_witch.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @ultra_evil_witch.to_param
    assert_response :success
  end

  test "should update ultra_evil_witch" do
    put :update, :id => @ultra_evil_witch.to_param, :ultra_evil_witch => @ultra_evil_witch.attributes
    assert_redirected_to ultra_evil_witch_path(assigns(:ultra_evil_witch))
  end

  test "should destroy ultra_evil_witch" do
    assert_difference('UltraEvilWitch.count', -1) do
      delete :destroy, :id => @ultra_evil_witch.to_param
    end

    assert_redirected_to ultra_evil_witches_path
  end
end
