class Post < ActiveRecord::Base
  attr_accessible :title, :body, :price, :category_id

  belongs_to :category
end
