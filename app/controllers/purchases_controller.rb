class PurchasesController < ApplicationController
  before_action :authenticate_user!
  
  def create
    @product = Product.find(params[:product_id])
    @purchase = Purchase.new(product: @product, user: current_user)
    @product.sold = true
    if @purchase.save & @product.save
       redirect_to products_path, notice: 'Product was successfully buyed.'
    else
       redirect_to products_path, alert: 'Product was not successfully buyed'
    end
  end
end
