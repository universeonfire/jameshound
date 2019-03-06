class Stok < ApplicationRecord
	has_many :sips
	belongs_to :stok_grup
end
