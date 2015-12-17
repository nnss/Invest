require 'test_helper'

class InvestsControllerTest < ActionController::TestCase
  setup do
    @invest = invests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:invests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create invest" do
    assert_difference('Invest.count') do
      post :create, invest: { amount: @invest.amount, bank: @invest.bank, name: @invest.name, user_id: @invest.user_id }
    end

    assert_redirected_to invest_path(assigns(:invest))
  end

  test "should show invest" do
    get :show, id: @invest
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @invest
    assert_response :success
  end

  test "should update invest" do
    patch :update, id: @invest, invest: { amount: @invest.amount, bank: @invest.bank, name: @invest.name, user_id: @invest.user_id }
    assert_redirected_to invest_path(assigns(:invest))
  end

  test "should destroy invest" do
    assert_difference('Invest.count', -1) do
      delete :destroy, id: @invest
    end

    assert_redirected_to invests_path
  end
end
