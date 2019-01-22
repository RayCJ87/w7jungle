# require 'rails_helper'

# RSpec.describe Product, type: :model do
#   describe 'Validations' do
#     # validation tests/examples here
#     before do
#       @category = Category.find_or_create_by! name: 'Furniture'
#       @product = @category.products.create!({
#         name: "Macbook wild",
#         description: 'what a wonderful product!',
#         quantity: 15,
#         price: 3999.99
#       })
#     end

#     it "should be invalid if the name field if empty" do
#       @product.name = nil
#       expect(@product).to_not be_valid
#     end

#     it 'should be invalid if the category field is empty' do
#       @product.category = nil
#       expect(@product).to be_valid
#       expect(@product.errors.full_messages[0]).to eq('Category can\'t be blank')
#     end

#   end
# end