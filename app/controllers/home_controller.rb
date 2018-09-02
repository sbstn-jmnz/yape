class HomeController < ApplicationController
  before_action except: [:index]

  def index
  end

  def purchases
    @my_purchases = Purchase.where(user_id: current_user.id)
  end

  def sales
    @my_sales = Product.where(sold: true)
  end
end
