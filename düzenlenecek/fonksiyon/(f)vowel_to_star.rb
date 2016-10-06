def vowel_to_star
  puts "Lütfen bir girdi yazınız!.."
  kelimeler = gets.downcase.split(//)
  j, kelime = 0, ""
  until kelimeler[j] == nil
    a = kelimeler[j]
    if  (a.include?"a") || (a.include?"e") || (a.include?"ı") || (a.include?"i")
      a.replace "*"
    elsif  (a.include?"o") || (a.include?"ö") || (a.include?"u") || (a.include?"ü")
      a.replace "*"
    end
      kelime = kelime + a.to_s
      j+=1
  end
  puts kelime
end
