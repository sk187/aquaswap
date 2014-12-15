require_relative "../db/connection"

class Product < ActiveRecord::Base
  has_and_belongs_to_many :users

  validates :product_name, :presence => true
  validates :description, :presence => true
  validates :image, :presence => true
  validates :price, :presence => true, :numericality => true
end