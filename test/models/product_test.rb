require "test_helper"

class ProductTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  setup do
    @user = User.create(email:"qwe@gmail.com", password:"111111", password_confirmation:"111111")
    @product = Product.new(product_name:"prdyct", price:250, description:"It is good", user_id:@user.id)
    @product.save
  end

  test "should be valid" do
    assert @product.valid?, "product is not valid,something is missing"
  end

  test "product_name must be present" do
    assert_not_empty @product.product_name
  end

  test "price must be present" do
    assert_not_nil @product.price
  end

  test "description must be present" do
    assert_not_empty @product.description
  end
end
