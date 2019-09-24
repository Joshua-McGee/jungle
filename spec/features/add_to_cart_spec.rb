require 'rails_helper'

RSpec.feature "User navigates from home page to product details page", type: :feature, js: true do

  # SETUP PRODUCTS (with a category)
  before :each do
    @category = Category.create! name: 'Apparel'

    10.times do |n|
      @category.products.create!(
        name:  Faker::Hipster.sentence(3),
        description: Faker::Hipster.paragraph(4),
        image: open_asset('apparel1.jpg'),
        quantity: 10,
        price: 64.99
      )
    end
  end

  scenario "They see all products" do
    # ACT
    visit root_path
    # CHECK IF PATH HAS A PRODUCT
    expect(page).to have_css 'article.product', count: 10
    # CLICK ON THE FIRST PRODUCT ELEMENT AND NAVIGATE TO PRODUCT DETAILS PAGE
    first('.product button').click
    sleep 2
    page.has_content?('(1)')
    # CHECK IF THE ROOT HAS UPDATED via screenshot
    save_screenshot
  end

end