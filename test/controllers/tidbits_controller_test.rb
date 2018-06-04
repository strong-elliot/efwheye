require 'test_helper'

class TidbitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tidbit = tidbits(:one)
  end

  test "should get index" do
    get tidbits_url
    assert_response :success
  end

  test "should get new" do
    get new_tidbit_url
    assert_response :success
  end

  test "should create tidbit" do
    assert_difference('Tidbit.count') do
      post tidbits_url, params: { tidbit: { body: @tidbit.body } }
    end

    assert_redirected_to tidbit_url(Tidbit.last)
  end

  test "should show tidbit" do
    get tidbit_url(@tidbit)
    assert_response :success
  end

  test "should get edit" do
    get edit_tidbit_url(@tidbit)
    assert_response :success
  end

  test "should update tidbit" do
    patch tidbit_url(@tidbit), params: { tidbit: { body: @tidbit.body } }
    assert_redirected_to tidbit_url(@tidbit)
  end

  test "should destroy tidbit" do
    assert_difference('Tidbit.count', -1) do
      delete tidbit_url(@tidbit)
    end

    assert_redirected_to tidbits_url
  end
end
