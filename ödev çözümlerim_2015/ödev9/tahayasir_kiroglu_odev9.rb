#encoding : UTF-8
require 'stemmify'
def  oku(dosya)
  dosya_adi = File.read("#{dosya}.txt").downcase
end
def  sor(a)
  print a
  cevap = gets.chomp.to_i
end
def  isleme( metin )#alfabe ve bosluk harici karakterleri siler
  metin = metin.gsub(/([^[a-z]" "é])/, " ").split
end
def  ekle(metin, blank_arr)
  metin.map! &:to_sym #str to sym
	metin.each do |karakter|
 	  blank_arr<< "#{metin.count(:"#{karakter}")} "+" #{karakter}"
	  metin.delete(karakter)
  end
end
def  gereksiz_sil(silinecek, metin)
	silinecek.each { |sil| metin.delete("#{sil}")}
	metin.map!{ |kelime| kelime.stem }#kelimeleri köklerine kadar ayrıstırır
	metin = metin.each { |kelime| metin.delete("#{kelime}") if  kelime.size < 3}
end
def  donustur(arr)#mevcut stringleri istenilen ölçüye dönüştür
  arr.map! do |at|
    at = at.split
	  at = "#{at[1]}\n#{at[0]}"
  end
end
def  calıstır(sayi, arr)#verilen sayida argümanı ekrana bas
  puts arr.take(sayi)
end
metin, wipe = isleme(oku("metin")), oku("stp").split #metin.txt ve stp.txt'i oku ve işle
gereksiz_sil(wipe, metin) #vasıfsız karakterleri sil
wipe=[]
ekle(metin, wipe)
wipe.sort!.reverse! #yüksek sayılı başta olacak şekilde sırala
calıstır(sor("Eşik değeri giriniz: "), donustur(wipe))
