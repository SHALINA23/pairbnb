require 'test_helper'

class ListingsControllerTest < ActionController::TestCase
  setup do
    @listing = listings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:listings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create listing" do
    assert_difference('Listing.count') do
      post :create, listing: { description_of_property: @listing.description_of_property, destination: @listing.destination, end_date: @listing.end_date, no_of_bathrooms: @listing.no_of_bathrooms, no_of_bedrooms: @listing.no_of_bedrooms, no_of_beds: @listing.no_of_beds, no_of_guest: @listing.no_of_guest, start_date: @listing.start_date, title: @listing.title, type_of_property: @listing.type_of_property, user_id: @listing.user_id }
    end

    assert_redirected_to listing_path(assigns(:listing))
  end

  test "should show listing" do
    get :show, id: @listing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @listing
    assert_response :success
  end

  test "should update listing" do
    patch :update, id: @listing, listing: { description_of_property: @listing.description_of_property, destination: @listing.destination, end_date: @listing.end_date, no_of_bathrooms: @listing.no_of_bathrooms, no_of_bedrooms: @listing.no_of_bedrooms, no_of_beds: @listing.no_of_beds, no_of_guest: @listing.no_of_guest, start_date: @listing.start_date, title: @listing.title, type_of_property: @listing.type_of_property, user_id: @listing.user_id }
    assert_redirected_to listing_path(assigns(:listing))
  end

  test "should destroy listing" do
    assert_difference('Listing.count', -1) do
      delete :destroy, id: @listing
    end

    assert_redirected_to listings_path
  end
end
