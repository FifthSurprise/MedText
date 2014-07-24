class Practice < ActiveRecord::Base
  geocoded_by :address
  after_validation :geocode

  def self.closest (current_address, radius)
    self.closest_list(current_address,radius).first
  end

  def self.closest_list(current_address,radius)
    self.near(current_address,radius, :order_by => "distance")
  end
end
