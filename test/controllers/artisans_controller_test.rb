require 'test_helper'

class ArtisansControllerTest < ActionController::TestCase
  setup do
    @artisan = artisans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:artisans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create artisan" do
    assert_difference('Artisan.count') do
      post :create, artisan: { description: @artisan.description, firstname: @artisan.firstname, lastname: @artisan.lastname, society:@artisan.society, location: @artisan.location, phone: @artisan.phone }
    end

    assert_redirected_to artisan_path(assigns(:artisan))
  end

  test "should show artisan" do
    get :show, id: @artisan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @artisan
    assert_response :success
  end

  test "should update artisan" do
    patch :update, id: @artisan, artisan: { description: @artisan.description, firstname: @artisan.firstname, lastname: @artisan.lastname, society:@artisan.society, location: @artisan.location, phone: @artisan.phone }
    assert_redirected_to artisan_path(assigns(:artisan))
  end

  test "should destroy artisan" do
    assert_difference('Artisan.count', -1) do
      delete :destroy, id: @artisan
    end

    assert_redirected_to artisans_path
  end
end
