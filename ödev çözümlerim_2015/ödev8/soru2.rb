#encoding : UTF-8
def  oku( dosya ) # Dosyalari sadece adindan okuyan fonksiyon
   dosya_adi = File.read( "#{dosya}" ).split
end
def  largest_hash_key(hash)
   hash.select {|k,v| v == hash.values.max }
end
def  hashle( dizi ) # Array'den hash'e
   dizi = Hash[*dizi]
end
def  min_hash_value(hash)
   hash.min_by{|k,v| k}
end
def  max_notlu_ogrenci( isim_txt, not_txt )
   isim_hashi = hashle( oku( isim_txt ) )
   not_hashi = hashle( oku( not_txt ) )
   high = [] #En yüksek puanı alan kişi adları
   max_notlar = largest_hash_key( not_hashi ) # Hash halinde yüksek notlar
   # Aynı öğrenci adı keys olarak birden çok saklanamadığı için
   #notlar ve öğrenci adlarını aiyırıyorum
   not_hashi = max_notlar.keys # En yüksek puanı alan kişi notları
   max_notlar.each_key { |a| high<<isim_hashi[a] }
   high.sort!
   #  Burada yüksek alan öğrencilerden adı
   # adı en küçük olmayanları siliyor
   (0..high.size).each do |i|
      unless high[i] == high[0]
         high.delete_at(i)
         not_hashi.delete_at(i)
      end
   end
   isim_hashi = Hash[ not_hashi.zip( high.map {|i| i.include?(',') ?
      (i.split /, /) : i})] #ayırdığım notlar ve öğrenci adlarını birleştirdim
   uygun_talebe = min_hash_value( isim_hashi)
   puts "En yüksek puan alan öğrenci: #{ uygun_talebe[0] } no'lu #{ uygun_talebe[1] }"
end
max_notlu_ogrenci( "ad.txt", "not.txt" )
