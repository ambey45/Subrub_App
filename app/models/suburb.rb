class Suburb < ApplicationRecord
	include ActiveModel::Serialization
	geocoded_by :pincode
	after_validation :geocode, :if => :pincode_changed?
end
