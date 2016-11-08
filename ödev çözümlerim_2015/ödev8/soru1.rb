#encoding : UTF-8
def  dosya_oku( dosya ) # Dosyalari sadece adindan okuyan fonksiyon
   dosya_adi = File.read( "#{ dosya }" ).split
end
def  hashleme( dizi ) # Array'den hash'e
   dizi = Hash[*dizi]
end
def  not_guncelle( notlar_hash ) # Çan eğrisi ve not güncelleme
   max_puan = notlar_hash.values.max.to_f
   oran = ( 100 - max_puan ) / max_puan
   notlar_hash.map { |k, v| notlar_hash[k] = (v.to_i + v.to_i * oran).ceil }
   return notlar_hash
end
def  ortalama( notlar_hash ) # Sınıf ortalamasını bulur
   toplam = 0
   notlar_hash.values.select do |sayi|
     toplam += sayi.to_i
   end
   ortalama = toplam / notlar_hash.size
   puts "yeni sınıf ortalaması: #{ ortalama }"
   ortalama_ustu( notlar_hash, ortalama )
end
def  ortalama_ustu( notlar_hash, ortalama ) # ortalamanın üstündekiler
   i = 0
   notlar_hash.values.select { | puan | i += 1 if puan >= ortalama }
   puts "#{ i } öğrenci ortalamanın üstünde."
end
def   program1
   dizi = dosya_oku( "not.txt" )
   dizi = hasleme( dizi )
   dizi = not_güncelle( dizi )
   dizi = puan_ortalama( dizi )
   dizi = ortalama(dizi)
end

program1
