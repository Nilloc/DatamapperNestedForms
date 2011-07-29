require 'test_helper'

class ProjectsesControllerTest < ActionController::TestCase
  setup do
    @projectse = projectses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:projectses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create projectse" do
    assert_difference('Projects.count') do
      post :create, :projectse => @projectse.attributes
    end

    assert_redirected_to projectse_path(assigns(:projectse))
  end

  test "should show projectse" do
    get :show, :id => @projectse.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @projectse.to_param
    assert_response :success
  end

  test "should update projectse" do
    put :update, :id => @projectse.to_param, :projectse => @projectse.attributes
    assert_redirected_to projectse_path(assigns(:projectse))
  end

  test "should destroy projectse" do
    assert_difference('Projects.count', -1) do
      delete :destroy, :id => @projectse.to_param
    end

    assert_redirected_to projectses_path
  end
end
