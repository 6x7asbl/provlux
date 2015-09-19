class Interest < ActiveRecord::Base
  has_many :medium
  has_many :pictures
  has_many :interest_urls
  # has_many :videos
  has_many :criteria
  has_many :opening_hours
  has_and_belongs_to_many :categories
  # belongs_to :city, foreign_key: :zip
  geocoded_by :full_address

  default_scope { where(country_code: 'be') }
  # TODO : add index on country_code

  scoped_search on: [:name, :description, :address, :website]
  scoped_search in: :city, on: [:city]
  scoped_search in: :category, on: [:label]

  scope :latests, -> { limit(10).order('id desc')}

  def has_pictures?
    self.pictures.any?
  end

  def has_opening_hours?
    self.opening_hours.any?
  end

  def main_picture
    pictures.first
  end

  def coordinates
    [latitude, longitude]
  end

  def excerpt
    regex = /<(h|H)(1|2|3|4|5|6)>/
    return "" if description.empty?
    return description if description.split(regex).empty?
    excerpt = description.split(regex)
    if excerpt.is_a? Array
      excerpt.first
    else
      excerpt
    end
  end
end
