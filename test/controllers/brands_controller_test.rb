require 'test_helper'

class BrandsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @brand = brands(:one)
  end

  test "should get index" do
    get brands_url
    assert_response :success
  end

  test "should get new" do
    get new_brand_url
    assert_response :success
  end

  test "should create brand" do
    assert_difference('Brand.count') do
      post brands_url, params: { brand: { address: @brand.address, city_id: @brand.city_id, contact: @brand.contact, description: @brand.description, email: @brand.email, name: @brand.name, phone: @brand.phone, user_id: @brand.user_id } }
    end

    assert_redirected_to brand_url(Brand.last)
  end

  test "should show brand" do
    get brand_url(@brand)
    assert_response :success
  end

  test "should get edit" do
    get edit_brand_url(@brand)
    assert_response :success
  end

  test "should update brand" do
    patch brand_url(@brand), params: { brand: { address: @brand.address, city_id: @brand.city_id, contact: @brand.contact, description: @brand.description, email: @brand.email, name: @brand.name, phone: @brand.phone, user_id: @brand.user_id } }
    assert_redirected_to brand_url(@brand)
  end

  test "should destroy brand" do
    assert_difference('Brand.count', -1) do
      delete brand_url(@brand)
    end

    assert_redirected_to brands_url
  end
end
