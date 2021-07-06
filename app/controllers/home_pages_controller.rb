class HomePagesController < ApplicationController
  def index
    @categories = Category.all
  end

  def about
  end

  def contact
  end
end
