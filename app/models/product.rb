class Product < ActiveRecord::Base
  has_attached_file :logo, styles: { :medium => "300x300>",
                                       :thumb => "100x100>" }

  has_many :contents
end
