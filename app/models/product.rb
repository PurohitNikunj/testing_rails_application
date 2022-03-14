class Product < ApplicationRecord
    belongs_to :user
    validates_presence_of :product_name, :price, :description
    validates :price, numericality: {only_integer: true, message: "Should be number"}
end
