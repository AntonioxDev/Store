class ProductsController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    Product.create(name: params[:name], quantity: params[:quantity])
  end
end
