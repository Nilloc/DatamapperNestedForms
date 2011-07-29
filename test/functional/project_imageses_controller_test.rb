require 'test_helper'

class ProjectImagesesControllerTest < ActionController::TestCase
  setup do
    @project_imagese = project_imageses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project_imageses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project_imagese" do
    assert_difference('ProjectImages.count') do
      post :create, :project_imagese => @project_imagese.attributes
    end

    assert_redirected_to project_imagese_path(assigns(:project_imagese))
  end

  test "should show project_imagese" do
    get :show, :id => @project_imagese.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @project_imagese.to_param
    assert_response :success
  end

  test "should update project_imagese" do
    put :update, :id => @project_imagese.to_param, :project_imagese => @project_imagese.attributes
    assert_redirected_to project_imagese_path(assigns(:project_imagese))
  end

  test "should destroy project_imagese" do
    assert_difference('ProjectImages.count', -1) do
      delete :destroy, :id => @project_imagese.to_param
    end

    assert_redirected_to project_imageses_path
  end
end
