(1..9).each do |sutun|
   sayi = ""
   (1..9).each{ |satir| sayi += "#{sutun * satir}\t"}

   puts sayi
end
