require 'rails_helper'

feature 'products' do
  context 'no products have been added/in stock' do
    scenario 'should show that no products are available' do
      visit '/products'
      expect(page).to have_content 'No products in stock'
    end
  end

  context 'products have been added in stock' do
    scenario 'should show available products' do
      Product.create(code: 001, name: 'Lavander heart', price: 9.25)
      visit '/products'
      expect(page).to have_content 'Lavander heart'
    end

    scenario 'customers can add items to cart' do
      Product.create(code: 001, name: 'Lavander heart', price: 9.25)
      visit '/products'
      click_link 'Add to cart'
      expect(page).to have_content 'My cart: 1 Lavender heart'
    end
  end

end
