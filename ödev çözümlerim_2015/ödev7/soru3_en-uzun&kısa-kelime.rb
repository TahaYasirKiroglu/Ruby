liste = File.read( "liste.txt" ).split
kelime_max, kelime_min = liste[0], liste[0]
liste.each do | kelime |
  if  kelime_max.length < kelime.length
    kelime_max = kelime
  elsif  kelime.length < kelime_min.length 
    kelime_min = kelime
  end
end
puts "En uzun kelime:#{ kelime_max }\nEn kısa kelime:#{ kelime_min }"
