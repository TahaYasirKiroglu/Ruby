def kelime_agirligi
  puts "kelime veya kelimeleri giriniz..."
  #kelimelere böl,harfleri küçült
  kelimeler = gets.downcase.split
  i = 0 # i,kelimeler arası geçiş sayacı
  until  kelimeler[i] == nil
    yazılacak = kelimeler[i]
    toplam = 0 #a,e,o,u,i harflerinin tekrar sayısı
    agirlik = 0 #a,e,o,u,i sayılarının ağırlığı
    kelime = kelimeler[i].split(//)
    j = 0#j, harfler arası geçiş sayacı
    until  kelime[j] == nil
      if  (kelime[j].include?"a") || (kelime[j].include?"e")
        agirlik += 3
        toplam += 1
      elsif  (kelime[j].include?"o") || (kelime[j].include?"u") || (kelime[j].include?"i")
        agirlik += 2
        toplam += 1
      end
      j += 1
    end    #diğer harfleri hesaplama ve toplam ağırlığa kat
    agirlik = agirlik + (kelime.length) - toplam
   puts "kelime: #{yazılacak}, ağırlığı: #{agirlik} "
   i += 1
  end
end
