require 'test_helper'

class OffsitePalletsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @offsite_pallet = offsite_pallets(:one)
  end

  test "should get index" do
    get offsite_pallets_url
    assert_response :success
  end

  test "should get new" do
    get new_offsite_pallet_url
    assert_response :success
  end

  test "should create offsite_pallet" do
    assert_difference('OffsitePallet.count') do
      post offsite_pallets_url, params: { offsite_pallet: {  } }
    end

    assert_redirected_to offsite_pallet_url(OffsitePallet.last)
  end

  test "should show offsite_pallet" do
    get offsite_pallet_url(@offsite_pallet)
    assert_response :success
  end

  test "should get edit" do
    get edit_offsite_pallet_url(@offsite_pallet)
    assert_response :success
  end

  test "should update offsite_pallet" do
    patch offsite_pallet_url(@offsite_pallet), params: { offsite_pallet: {  } }
    assert_redirected_to offsite_pallet_url(@offsite_pallet)
  end

  test "should destroy offsite_pallet" do
    assert_difference('OffsitePallet.count', -1) do
      delete offsite_pallet_url(@offsite_pallet)
    end

    assert_redirected_to offsite_pallets_url
  end
end
