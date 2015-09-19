module InterestsFinder
  extend ActiveSupport::Concern

  private

  def get_coordinates
    @coordinates = Geocoder::Calculations.geographic_center(@interests.map(&:coordinates))
  end

  def get_interests
    if current_city
      @interests = Interest.near([current_city.latitude, current_city.longitude])
      @interests = @interests.where(zip: current_city.zip)
    else
      @interests = Interest.where('latitude > ?', 0.0).all
    end
    @interests = @interests.joins(:categories).where("categories.id": category.id)    if category
    @interests = current_user.likeables(Interest)                                     if action_name == "liked"
    # @interests = Interest.joins(:city).search_for(search_term)                        if search_term
    # @interests = @interests.limit(50)
    @interests
  end

  def category
    @category ||= Category.find(params[:category_id]) if params[:category_id]
  end

  def search_term
    @search_term ||= params[:searches] ? params[:searches][:term] : nil
  end

end
