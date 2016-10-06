#encoding : utf-8
#Bu sistem girilen bir sayý 100'e tamamlayacak þekilde
#orantýlar. 
#Ýkinci girilen sayýyý'da birinci sayýnýn
#artýþ oranýna göre arttýrýr.
puts "oranlanacak bir sayi giriniz."
oran=gets.chomp.to_i
b = ( 100 - oran )

puts "ikinci bir rakam giriniz"
a = gets.chomp.to_f
#ikinci girilen sayi daha büyükse uyarý verir.
if oran > a 
  c = (a + b * ( a / oran )).round
else
  c = "oranlanacak sayi, ikinci girilecek sayidan buyuk olmalidir."
end

puts c
