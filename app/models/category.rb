class Category < ActiveRecord::Base
  has_many :children, class_name: Category
  scope :root, -> { where(category_id: nil, master: true) }

  def has_children?
    children.any?
  end
end
