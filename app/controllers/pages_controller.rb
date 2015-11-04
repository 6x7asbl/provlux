class PagesController < ApplicationController

  def businesses
    @categories = Category.all.root
  end

  def tourism; end
  def agenda; end
end
