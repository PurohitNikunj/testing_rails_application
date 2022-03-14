require 'rails_helper'

RSpec.describe Product, type: :request do
    include Devise::Test::IntegrationHelpers
    before do
        @u = User.create(email:"a@a.com", password:"111111", password_confirmation:"111111")
        sign_in @u
        @product = @u.products.create(product_name:"ffff", price:250, description:"hhhhh")
    end

    it "should gets all products" do
        get products_path
        expect(response).to be_successful
    end

    it "should get new product" do
        get new_product_url
        expect(response).to be_successful
    end

    it "should create new product" do
        get product_path(@product)
        expect(response).to be_successful
    end

    it "should show parrticular product" do
        get product_path(@product)
        expect(response).to be_successful
    end

    it "should get edit product path" do
        get edit_product_path(@product)
        expect(response).to be_successful
    end

    it "should get delete product path" do
        @product.destroy
        get products_path
        expect(Product.find_by(id:@product.id)).to be_nil
    end
end
