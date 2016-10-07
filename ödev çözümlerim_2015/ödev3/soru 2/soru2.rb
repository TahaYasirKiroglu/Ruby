#Taha Yasir Kıroğlu
#Üçgen Diklik Testi
print "Dik Kenar testi için kenar değerlerini küçükten büyüğe giriniz..."
uckenar = gets.chomp
a, b, c = uckenar.split
a, b, c = a.to_i, b.to_i, c.to_i
if ( a*a + b*b = c*c )
  puts "Verilen değerlerle dik üçgen oluşturulabilir."
else
  puts "Verilen geğerlerle dik üçgen oluşturulamaz."
end
