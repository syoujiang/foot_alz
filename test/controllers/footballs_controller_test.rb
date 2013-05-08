require 'test_helper'

class FootballsControllerTest < ActionController::TestCase
  setup do
    @football = footballs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:footballs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create football" do
    assert_difference('Football.count') do
      post :create, football: { f_end: @football.f_end, f_start: @football.f_start, p_end: @football.p_end, p_start: @football.p_start, s_end: @football.s_end, s_start: @football.s_start, tmp2: @football.tmp2, tmp: @football.tmp }
    end

    assert_redirected_to football_path(assigns(:football))
  end

  test "should show football" do
    get :show, id: @football
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @football
    assert_response :success
  end

  test "should update football" do
    patch :update, id: @football, football: { f_end: @football.f_end, f_start: @football.f_start, p_end: @football.p_end, p_start: @football.p_start, s_end: @football.s_end, s_start: @football.s_start, tmp2: @football.tmp2, tmp: @football.tmp }
    assert_redirected_to football_path(assigns(:football))
  end

  test "should destroy football" do
    assert_difference('Football.count', -1) do
      delete :destroy, id: @football
    end

    assert_redirected_to footballs_path
  end
end
