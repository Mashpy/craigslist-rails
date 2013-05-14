class Category < ActiveRecord::Base
  attr_accessible :name
  
  has_many :posts

  # def to_param
  #   slug
  # end

  # def name=(_name)
  #   slug = name.downcase
  # end
end
