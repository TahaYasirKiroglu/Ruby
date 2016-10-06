def  kelimeler
 puts "Kelimeleri giriniz..."
 dizi = gets.downcase.split
 i = 0
 while  i < (dizi.size)
  toplam = 0
  kelime = dizi[i].to_s
    at = dizi[i].to_s.split(//)
  if  (dizi[i].include?"a")
   toplam += at.count('a')*3
    at.delete('a')
  end
  if  (dizi[i].include?"e")
   toplam += at.count('e')*3
    at.delete('e')
  end
  if  (dizi[i].include?"o")
   toplam += at.count('o')*2
    at.delete('o')
  end
  if  (dizi[i].include?"u")
   toplam += at.count('u')*2
    at.delete('u')
  end
  if  (dizi[i].include?"i")
   toplam += at.count('i')*2
    at.delete('i')
  end
  toplam += at.size
    i += 1
   puts "kelime: #{kelime}, ağırlığı: #{toplam}"
 end
end
