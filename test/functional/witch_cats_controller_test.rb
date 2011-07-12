require 'test_helper'

class WitchCatsControllerTest < ActionController::TestCase
  setup do
    @witch_cat = witch_cats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:witch_cats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create witch_cat" do
    assert_difference('WitchCat.count') do
      post :create, :witch_cat => @witch_cat.attributes
    end

    assert_redirected_to witch_cat_path(assigns(:witch_cat))
  end

  test "should show witch_cat" do
    get :show, :id => @witch_cat.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @witch_cat.to_param
    assert_response :success
  end

  test "should update witch_cat" do
    put :update, :id => @witch_cat.to_param, :witch_cat => @witch_cat.attributes
    assert_redirected_to witch_cat_path(assigns(:witch_cat))
  end

  test "should destroy witch_cat" do
    assert_difference('WitchCat.count', -1) do
      delete :destroy, :id => @witch_cat.to_param
    end

    assert_redirected_to witch_cats_path
  end
end
