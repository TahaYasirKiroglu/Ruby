#encoding : utf-8
#Bu sistem girilen bir say� 100'e tamamlayacak �ekilde
#orant�lar. 
#�kinci girilen say�y�'da birinci say�n�n
#art�� oran�na g�re artt�r�r.
puts "oranlanacak bir sayi giriniz."
oran=gets.chomp.to_i
b = ( 100 - oran )

puts "ikinci bir rakam giriniz"
a = gets.chomp.to_f
#ikinci girilen sayi daha b�y�kse uyar� verir.
if oran > a 
  c = (a + b * ( a / oran )).round
else
  c = "oranlanacak sayi, ikinci girilecek sayidan buyuk olmalidir."
end

puts c
