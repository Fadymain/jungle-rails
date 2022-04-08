class Admin::DashboardController < ApplicationController
  def show
    @productSum = Product.count()
    @categoryCount = Category.count()
  end
end
