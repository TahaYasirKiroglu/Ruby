#encoding : utf-8
# eklenmesi gereken:
# tsch,sch,vsk gibi yabancı kelimelerden gelen harflerle boğuşulacak 
class String
	def sesli_mi?( harf )
			harf = "y" unless harf #harfin nil olma ihtimaline karşı
			sesli= "aeıioöuü".to_sym
			harf=/#{harf.downcase}/
		return true if sesli =~ harf # harfi seslilerde ara
	end
	def hecele
		heceli = self.downcase
		sinir = self.size
		i=1
		while i < sinir
			if sesli_mi?( self[-i] )
				if sesli_mi?( self[-(i+1)] )
					heceli.insert(sinir-i,"-")
				else
					i+=1
					if (sinir-i > 2) || sesli_mi?( self[-(i+1)] ) 
						heceli.insert(sinir-i,"-")
					elsif sesli_mi? ( self[0] ) # ilk harf sesliyse
						heceli.insert(2,"-") 
					end
				end
			end
			i+=1
		end
		return heceli
	end
	def hecele!
		self.replace (self.hecele)
	end
end
def kelime_al( )
	print "Kelimeyi giriniz: "
	kelime = gets.chomp.downcase
end

kelime = kelime_al
a=Time.new
puts "heceleri= #{kelime.hecele!}"
puts kelime
b=Time.new
puts "işlem #{b-a} saniyede gerçekleşti"
