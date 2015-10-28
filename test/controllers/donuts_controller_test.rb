require 'test_helper'

class DonutsControllerTest < ActionController::TestCase
  setup do
    @donut = donuts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:donuts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create donut" do
    assert_difference('Donut.count') do
      post :create, donut: { cost: @donut.cost, extras: @donut.extras, filling: @donut.filling, image: @donut.image, name: @donut.name, topping: @donut.topping }
    end

    assert_redirected_to donut_path(assigns(:donut))
  end

  test "should show donut" do
    get :show, id: @donut
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @donut
    assert_response :success
  end

  test "should update donut" do
    patch :update, id: @donut, donut: { cost: @donut.cost, extras: @donut.extras, filling: @donut.filling, image: @donut.image, name: @donut.name, topping: @donut.topping }
    assert_redirected_to donut_path(assigns(:donut))
  end

  test "should destroy donut" do
    assert_difference('Donut.count', -1) do
      delete :destroy, id: @donut
    end

    assert_redirected_to donuts_path
  end
end
