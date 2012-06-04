require 'test_helper'

class ConcoursesControllerTest < ActionController::TestCase
  setup do
    @concourse = concourses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:concourses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create concourse" do
    assert_difference('Concourse.count') do
      post :create, concourse: { description: @concourse.description, name: @concourse.name }
    end

    assert_redirected_to concourse_path(assigns(:concourse))
  end

  test "should show concourse" do
    get :show, id: @concourse
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @concourse
    assert_response :success
  end

  test "should update concourse" do
    put :update, id: @concourse, concourse: { description: @concourse.description, name: @concourse.name }
    assert_redirected_to concourse_path(assigns(:concourse))
  end

  test "should destroy concourse" do
    assert_difference('Concourse.count', -1) do
      delete :destroy, id: @concourse
    end

    assert_redirected_to concourses_path
  end
end
