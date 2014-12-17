
class ReviewsController < ApplicationController
  respond_to :json

  def index
    # For a given controller action,
    # respond_with generates an appropriate
    # response based on the mime-type requested
    # by the client.
    respond_with Review.all
  end

  def show
    respond_with Review.find(params[:id])
  end

  def create
    params.permit!
    @review = Review.create(params[:review])
    @product = Product.find(params[:product_id])
    respond_with [@product, @review]
  end

  def update
    params.permit!
    respond_with Review.update(params[:id], params[:review])
  end

  def destroy
    respond_with Review.destroy(params[:id])
  end
end

