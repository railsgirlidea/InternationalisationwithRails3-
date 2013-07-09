class Product < ActiveRecord::Base
  attr_accessible :description, :name, :price
  validates :name,
            :presence => true,
            :uniqueness => true,
            :length => { :within => 2..255 }

  validates :price,
            :presence => true,
            :numericality => { :greater_than => 0 }
end
