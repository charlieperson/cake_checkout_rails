class CartsController < ApplicationController
  def update
    if Cart.all.any?
      @cart = Cart.first
    else
      @cart = Cart.create
    end
    @cart.product_id = params[:product]
    @products = @cart.product_id.all
  end
end
