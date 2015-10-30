require 'test_helper'

class WebsitesisControllerTest < ActionController::TestCase
  setup do
    @websitesi = websitesis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:websitesis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create websitesi" do
    assert_difference('Websitesi.count') do
      post :create, websitesi: { adresi: @websitesi.adresi }
    end

    assert_redirected_to websitesi_path(assigns(:websitesi))
  end

  test "should show websitesi" do
    get :show, id: @websitesi
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @websitesi
    assert_response :success
  end

  test "should update websitesi" do
    patch :update, id: @websitesi, websitesi: { adresi: @websitesi.adresi }
    assert_redirected_to websitesi_path(assigns(:websitesi))
  end

  test "should destroy websitesi" do
    assert_difference('Websitesi.count', -1) do
      delete :destroy, id: @websitesi
    end

    assert_redirected_to websitesis_path
  end
end
