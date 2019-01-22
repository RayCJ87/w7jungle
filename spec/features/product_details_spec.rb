require 'rails_helper'

RSpec.feature "ProductDetails", type: :feature, js:true do
  # pending "add some scenarios (or delete) #{__FILE__}"

  before :each do
    @category = Category.create! name: 'Apparel'

    10.times do |n|
      @category.products.create!(
        name:  Faker::Hipster.sentence(3),
        description: Faker::Hipster.paragraph(4),
        quantity: 10,
        price: 64.99
      )
      # @category.products.create!(
      #   name:  Faker::Hipster.sentence(3),
      #   description: Faker::Hipster.paragraph(4),
      #   image: open_asset('apparel1.jpg'),
      #   quantity: 10,
      #   price: 64.99
      # )
    end
  end

  scenario "Check some product details" do

    visit root_path

      click_link("Details »", match: :first)


      expect(page).to have_css 'section.products-show', count: 1
      save_and_open_screenshot
  end



end
