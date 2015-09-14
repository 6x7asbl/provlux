class VisitorsController < ApplicationController
  def index
    @interests = InterestDecorator.decorate(Interest.latests)
  end
end
