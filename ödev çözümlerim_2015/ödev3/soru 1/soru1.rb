#Taha Yasir Kıroğlu
#Alan ve çevre hesabı kare ve dikdörtgen için geçerlidir.
print "Alan ve çevre hesabı için kenar değerlerini giriniz..."
kenar = gets.chomp
a, b = kenar.split
a, b = a.to_i, b.to_i
puts " Alan: "+ ( a * b ).to_s ; puts " Çevre: " + (2*(a+b)).to_s
