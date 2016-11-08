#encoding : UTF-8
require 'stemmify'
def  kucuk_oku( dosya )
	dosya_adi = File.read( "#{dosya}" ).downcase
end
def  sor( soru )
	print soru
	cevap = gets.chomp.to_i
end
def  alpha_only( metin )#alfabe ve bosluk harici karakterleri siler
	metin = metin.gsub(/([^[a-z]" "é])/, " ").split
end
def  ekle( metin )
	tekrarlanan = []
	metin.map! &:to_sym #str to sym
	metin.each do |karakter|
		tekrarlanan<< "#{metin.count(:"#{karakter}")} "+" #{karakter}"
		metin.delete(karakter)
	end
	return tekrarlanan
end
def  cop_cikar( copler, metin )
	copler.each { | cop | metin.delete("#{ cop }")} # copleri metinden cikarir
	return metin
end
def  kokunu_kazi( metin )
	metin.map!{ |kelime| kelime.stem } #kelimeleri köklerine kadar ayrıstırır
	metin = metin.each { |kelime| metin.delete("#{ kelime }") if  kelime.size < 3}
end
def  donustur(arr)#mevcut stringleri istenilen ölçüye dönüştür
	arr.map! do |at|
		at = at.split
		at = "#{at[1]}\n#{at[0]}"
	end
end
def  puts_arr(sayi, arr)#verilen sayida argümanı ekrana bas
	puts arr.take( sayi )
end
def  asil_musteri?( metin, cop ) # en sık gecen kelimeleri bulur
	metin = alpha_only( kucuk_oku( metin ) ) 
	copler = kucuk_oku( cop ).split #metin.txt ve stp.txt'i oku ve işle
	metin = cop_cikar( copler, metin) #vasıfsız karakterleri sil
	kokunu_kazi( metin ) 
	metin = ekle( metin )
	metin.sort!.reverse! #yüksek sayılı başta olacak şekilde sırala
	puts_arr( sor("Eşik değeri giriniz: "), donustur(metin) )
end
asil_musteri?( "metin.txt", "stp.txt" )
