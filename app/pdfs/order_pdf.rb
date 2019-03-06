#prawn document classından inherit yapmak yerine aşağıdaki include lu class tanımlamsı öneriliyor 
#class OrderPdf < Prawn::Document

# 	def initialize
# 		content
# 	end
# end

class OrderPdf
	include Prawn::View
	def initialize(sip)
		#super(top_margin: 70) 
		#font indirdim türkçe için
		self.font_families.update("DejaVuSans" => {:normal => "#{Rails.root}/public/DejaVuSans.ttf"})
    	font "DejaVuSans"
	    @sip = sip
		content
		
    	line_items
	end
	def content
		
	    text "Siparis No"

	end
	def line_items
		move_down 20
		table line_item_rows do
			#row(0).font_style = :bold
			columns(1..3).align = :right
			#self.row_colors = ['DDDDDD', 'FFFFFF']
			self.header = true
		end
	end
	def line_item_rows
	    [["Firma","Stok Adı", "Sipariş Mik."] , [@sip.cari.unvan, @sip.stok.stok_adi, @sip.siparis_miktar]]
		 
    end
   
 
end
