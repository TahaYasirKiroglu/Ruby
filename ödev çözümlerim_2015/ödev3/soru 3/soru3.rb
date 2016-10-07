#Taha Yasir Kıroğlu
#Mantıksal üçgen diklik testi fonksiyonu
def dikucgen? (x, y, z)
a =  ( x*x == y*y + z*z )
b =  ( y*y == x*x + z*z )
c =  ( z*z == x*x + y*y )
  puts  ( a || b || c )
end
