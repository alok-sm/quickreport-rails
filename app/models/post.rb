class Post < ActiveRecord::Base
  attr_protected
  has_attached_file :image
end
