class Product < ApplicationRecord
  validates :name, presence: true
  has_many :comments

  #serialize :color # add this

  # you can't use `inclusion:` validation because it is only for validating a single value
  # so you'll do something like this, or if you want it to clean it a bit by defining a method instead, see here https://stackoverflow.com/questions/13579357/validates-array-elements-inclusion-using-inclusion-in-array

  def self.search(search_term)
    if Rails.env.development?
      Product.where("name LIKE ?", "%#{search_term}%")
    else
      Product.where("name ilike ?", "%#{search_term}%")
    end
  end
  def highest_rating_comment
    comments.rating_desc.first
  end
  def lowest_rating_comment
    comments.rating_asc.first
  end
  def average_rating
    comments.average(:rating).to_f
  end

end
