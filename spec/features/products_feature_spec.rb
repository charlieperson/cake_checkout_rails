require 'rails_helper'

feature 'products' do
  context 'no products have been added/in stock' do
    scenario 'should show that no products are available' do
      visit '/products'
      expect(page).to have_content 'No products in stock'
    end
  end
end
