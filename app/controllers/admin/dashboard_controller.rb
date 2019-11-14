class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: ENV['USERNAME'], password: ENV['PASSWORD']

  def show
    @products = Product.sum(:quantity)
    @categories = Category.count(:id)
  end
end
