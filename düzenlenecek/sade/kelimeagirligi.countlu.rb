def  kelimeler
 puts "Kelimeleri giriniz..."
 dizi = gets.downcase.split
 i = 0
 while  i < (dizi.size)
  toplam = 0
  kelime2 = dizi[i].to_s
    kelime1 = dizi[i].to_s.split(//)
  toplam += kelime1.count('a')*3
    kelime1.delete('a')
  toplam += kelime1.count('e')*3
    kelime1.delete('e')
  toplam += kelime1.count('o')*2
    kelime1.delete('o')
  toplam += kelime1.count('u')*2
    kelime1.delete('u')
  toplam += kelime1.count('i')*2
    kelime1.delete('i')
  toplam += kelime1.size
    i += 1
   puts "kelime: #{kelime2}, ağırlığı: #{toplam}"
 end
end
