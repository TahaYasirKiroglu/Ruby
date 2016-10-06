#tahmin ve sayi parametrik olarak gelen değerler
tahmin = %w(5 8 13 18 20 40)
sayi = %w(1 2 5 8 20 32)
sayac = 0
i = 1
while  i <= 6
   j = 1
   while  j <= 6
     if  sayi[i] == tahmin[j]
       sayac += 1
     end
     j += 1
   end
   i += 1
end
if  sayac == 3
  puts "3 bilen #{sayac} kişi var "
elsif  sayac==4
  puts "4 bilen #{sayac} kişi var "
elsif  sayac==5
  puts "5 bilen #{sayac} kişi var "
elsif  sayac==6
  puts "6 bilen #{sayac} kişi var "
end
