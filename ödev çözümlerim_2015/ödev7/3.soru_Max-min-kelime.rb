def	MmFile( dosya )
	liste = File.read( dosya ).split
	kelime_max, kelime_min = liste[0], liste[0]
	liste.each do | kelime |
		if  kelime_max.length < kelime.length
			kelime_max = kelime
		elsif  kelime_min.length > kelime.length
			kelime_min = kelime
		end
	end
	MmBas( kelime_max, kelime_min )
end
def MmBas( max, min )
	puts "En uzun kelime:#{ max }"
	puts  "En kısa kelime:#{ min }"
end

MmFile "liste.txt"
