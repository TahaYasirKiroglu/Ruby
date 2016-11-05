#encoding: utf-8

class Para
	@cekilen
	def initialize(miktar=0)
		@cekilen = miktar
	    @paralar = [200, 100, 50, 20, 10, 5, 1, 0.50, 0.25, 0.10, 0.05, 0.01]	
	end
	# eğer verilen para miktarını başarılı bir şekilde verirse 0, az 
	# miktarda verirse kalan miktarı, çok verirse -1 döner.
	def paraUstuHesapla
		@paralar.map do |para|
			paraMiktari=(@cekilen/para).floor
			paraUstuVer(paraMiktari ,para) if paraMiktari > 0
			@cekilen=@cekilen%para
		end
		return @cekilen #verilmiş olarak kalan para
	end
	def paraUstuVer(adet, miktar)
		puts "#{adet} tane #{miktar} TL verildi."
	end
	private :paraUstuVer
end

para = Para.new(145)
puts para.paraUstuHesapla
