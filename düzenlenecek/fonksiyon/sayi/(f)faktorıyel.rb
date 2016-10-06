#faktöriyel hesaplama
#n parametrik olarak girilecek

def faktor(n)
  a = 1
  (2..n).each { |at| a=at*a }

  return a
end
