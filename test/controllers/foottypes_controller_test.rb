require 'test_helper'

class FoottypesControllerTest < ActionController::TestCase
  setup do
    @foottype = foottypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:foottypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create foottype" do
    assert_difference('Foottype.count') do
      post :create, foottype: { name: @foottype.name }
    end

    assert_redirected_to foottype_path(assigns(:foottype))
  end

  test "should show foottype" do
    get :show, id: @foottype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @foottype
    assert_response :success
  end

  test "should update foottype" do
    patch :update, id: @foottype, foottype: { name: @foottype.name }
    assert_redirected_to foottype_path(assigns(:foottype))
  end

  test "should destroy foottype" do
    assert_difference('Foottype.count', -1) do
      delete :destroy, id: @foottype
    end

    assert_redirected_to foottypes_path
  end
end
