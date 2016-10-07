#encoding : UTF-8
def  yaz( a )
   puts a
end
def  oku(dosya) # Dosyalari sadece adindan okuyan fonksiyon
   dosya_adi = File.read( "#{dosya}.txt" ).split
end
def  largest_hash_key(hash)
   hash.select {|k,v| v == hash.values.max }
end
def  hashleme( dizi ) # Array'den hash'e
   dizi = Hash[*dizi]
end
def  min_hash_value(hash)
   hash.min_by{|k,v| k}
end
isim_dizisi = hashleme(oku( "ad" ))
not_dizisi = hashleme(oku( "not" ))
high = [] #En yüksek puanı alan kişi adları
b = largest_hash_key(not_dizisi) # Hash halinde yüksek notlar
# Aynı öğrenci adı keys olarak birden çok saklanamadığı için
#notlar ve öğrenci adlarını ayırıyorum
not_dizisi = b.keys # En yüksek puanı alan kişi no'ları
b.each_key { |a| high<<isim_dizisi[a] }
high.sort!
# Burada yüksek alan öğrencilerden adı
#adı en küçük olmayanları siliyor
(0..high.size).each do |i|
  unless high[i] == high[0]
    high.delete_at(i)
    not_dizisi.delete_at(i)
  end
end
isim_dizisi = Hash[not_dizisi.zip(high.map {|i| i.include?(',') ?
   (i.split /, /) : i})] #ayırdığım notlar ve öğrenci adlarını birleştirdim
uygun_talebe = min_hash_value(isim_dizisi)
yaz("En yüksek puan alan öğrenci: #{uygun_talebe[0]} no'lu #{uygun_talebe[1]} ")
