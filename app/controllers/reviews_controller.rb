class ReviewsController < ApplicationController

  def create
    @product = Product.find(params[:product_id])
    @review = Review.new(review_form_params)
    # @review.user_id = current_user.id
    @review.user = current_user
    @review.product_id = @product.id
    puts "The review info here:     "
    puts @review.user_id, @review.product_id, @review.description, @review.rating
    if @review.save
      redirect_to "/products/#{params[:product_id]}"
    else
      redirect_to "/products/#{params[:product_id]}"
    end
  end

  def destroy
    Review.find(params[:id]).destroy
    redirect_to "/products/#{params[:product_id]}"
  end

  private
  def review_form_params
    params.require(:review).permit(:description, :rating)
  end

end
