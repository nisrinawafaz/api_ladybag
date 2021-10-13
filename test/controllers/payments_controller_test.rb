require "test_helper"

class PaymentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @payment = payments(:one)
  end

  test "should get index" do
    get payments_url
    assert_response :success
  end

  test "should get new" do
    get new_payment_url
    assert_response :success
  end

  test "should create payment" do
    assert_difference('Payment.count') do
      post payments_url, params: { payment: { address: @payment.address, cart_id: @payment.cart_id, city: @payment.city, country: @payment.country, district_id: @payment.district_id, fullname: @payment.fullname, id: @payment.id, phone: @payment.phone, status_id: @payment.status_id, subtotal: @payment.subtotal, total: @payment.total, user_id: @payment.user_id } }
    end

    assert_redirected_to payment_url(Payment.last)
  end

  test "should show payment" do
    get payment_url(@payment)
    assert_response :success
  end

  test "should get edit" do
    get edit_payment_url(@payment)
    assert_response :success
  end

  test "should update payment" do
    patch payment_url(@payment), params: { payment: { address: @payment.address, cart_id: @payment.cart_id, city: @payment.city, country: @payment.country, district_id: @payment.district_id, fullname: @payment.fullname, id: @payment.id, phone: @payment.phone, status_id: @payment.status_id, subtotal: @payment.subtotal, total: @payment.total, user_id: @payment.user_id } }
    assert_redirected_to payment_url(@payment)
  end

  test "should destroy payment" do
    assert_difference('Payment.count', -1) do
      delete payment_url(@payment)
    end

    assert_redirected_to payments_url
  end
end
