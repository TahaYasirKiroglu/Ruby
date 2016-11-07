# daha modüler bir cevap
def kelime_agirlik( kelime )
	agir = 0
	kelime.each_char do | harf |
		case  harf
			when "a", "e"
				agir += 2
			when "o", "u", "i"
				agir += 1
		end
		agir += 1
	end
		puts "kelime: #{kelime}, ağırlığı: #{agir} "
end
def kelime_al
	puts "Kelime veya kelimeleri giriniz..."
	kelimeler = gets.chomp.downcase.split
	return kelimeler
end
def kelime_tanimla( kelimeler )
	if  kelimeler.class == Array 
		kelimeler.select do | kelime |
			kelime_agirlik( kelime )
		end
	elsif  kelimeler.class == String
		kelime_agirlik( kelime )
	end
end

kelimeler = kelime_al

kelime_tanimla kelimeler
