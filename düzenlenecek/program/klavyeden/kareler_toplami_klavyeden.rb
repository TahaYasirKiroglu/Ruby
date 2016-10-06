#Girilen sayıya kadar olan sayıların karelerinin toplamını bulma programı
#Yazılan formül 1'den girilen sayı'ya kadar olan sayıların
#toplamını verir
def  kare_toplami(sayi)
 sayi = (sayi * ( sayi + 1 ) * ( 2 * sayi + 1 )) / 6
 return sayi
end

def  soyle (sayi)
  puts kare_toplami sayi
end

def  sor_isle
  puts "Sayı giriniz"
  sayi = gets.chomp.to_i
  soyle sayi
end

sor_isle
