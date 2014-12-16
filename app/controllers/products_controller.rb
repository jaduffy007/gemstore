class ProductsController < ApplicationController
  respond_to :json

  def index
    # For a given controller action,
    # respond_with generates an appropriate
    # response based on the mime-type requested
    # by the client.
    respond_with Product.all
  end

  def show
    respond_with Product.find(params[:id])
  end

  def create
    params.permit!
    respond_with Product.create(params[:product])
  end

  def update
    params.permit!
    respond_with Product.update(params[:id], params[:product])
  end

  def destroy
    respond_with Product.destroy(params[:id])
  end
end