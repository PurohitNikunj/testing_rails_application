require 'rails_helper'
# require './test/fixtures/users.yml'

RSpec.describe Product, :type => :model do
  # sign_in users(:one)
  subject {
    described_class.new( product_name: "Anything",
                 description: "Lorem ipsum",
                 price: 250,
                 user_id: 980190962 )
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end
  
  it "is not valid without a product_name" do
    subject.product_name = ""
    expect(subject).to_not be_valid
  end

  it "is not valid without a description" do
    expect(subject).to be_valid
  end

  it "is not valid without a price" do
    expect(subject).to be_valid
  end

end
