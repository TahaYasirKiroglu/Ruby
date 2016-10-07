#encoding : UTF-8
def  yaz( a )
   puts a
end
def  oku(dosya) # Dosyalari sadece adindan okuyan fonksiyon
   dosya_adi = File.read( "#{dosya}.txt" ).split
end
def  hashleme( dizi ) # Array'den hash'e
   dizi = Hash[*dizi]
end
def  oranti( dizi ) # Çan eğrisi ve not güncelleme
   max_puan = dizi.values.max.to_f
   oran = ( 100 - max_puan ) / max_puan
   dizi.map { |k, v| dizi[k] = (v.to_i + v.to_i * oran).ceil }
   puan_ortalama( dizi )
end
def  puan_ortalama( dizi ) # Sınıf ortalamasını bulur
   toplam = 0
   dizi.values.select do |sayi|
     toplam += sayi.to_i
   end
   ortalama = toplam / dizi.size
   yaz("yeni sınıf ortalaması: #{ortalama}")
   ortalama_sayac( dizi, ortalama )
end
def  ortalama_sayac( dizi, ortalama ) # ortalamanın üstündekiler
   i = 0
   dizi.values.select { |chr| i += 1 unless chr < ortalama }
   yaz("#{i} öğrenci ortalamanın üstünde.")
end
dizi = oku( "not" )
dizi = oranti( hashleme( dizi ) )
