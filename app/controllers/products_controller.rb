class ProductsController < ApplicationController

  def index
    @products = Product.all.order(created_at: :desc)
  end

  def show
    @product = Product.find(params[:id])
    puts "The prodcut is here:   #{@product.id}"
    @review = Review.where(product_id: @product.id)
    @review.each do |r|
      puts "The review is this.... #{r.description}"
    end
  end

end
