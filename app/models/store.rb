class Store < ApplicationRecord
	validates :name, :address, :latitude, :longitude, presence: true
	validates :latitude, :longitude, numericality: true
end
