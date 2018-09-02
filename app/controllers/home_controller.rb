class HomeController < ApplicationController
  before_action only: [:purchases]
  def index
  end

  def purchases
    @my_purchases = Purchase.where(user_id: current_user.id)
  end
end
