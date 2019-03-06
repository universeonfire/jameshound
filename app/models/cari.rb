class Cari < ApplicationRecord
	has_many :sips
	belongs_to :cari_grup
	has_many :cari_belge_tanims
	accepts_nested_attributes_for :cari_belge_tanims, 
									allow_destroy: true,
								   reject_if: lambda {|attrs| attrs['belge_id'].blank?}
end
