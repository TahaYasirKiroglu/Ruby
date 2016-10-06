#1-25 arasında girilen bir sayının faktöriyel değerini veren program
def  faktoriyel (n)
  a = 1
  (2..n).each do |at|
    if  0 < n && n < 26
      a = at*a
    else
      a = "Hatalı parametre"
    end
  end
  return a
end
#sonucu söyleyen bölüm(sor fonksiyonu)
def soyle n
  puts faktoriyel n
end
#programın soru sormasını ve alınan cevabı işlemesini sağlayan bölüm.
def sor
 print "1-25 arasında bir sayı değeri giriniz..."
 n = gets.chomp.to_i
 soyle n
end
#programın çalışması için çalıştırmamız gereken fonksiyon
sor
