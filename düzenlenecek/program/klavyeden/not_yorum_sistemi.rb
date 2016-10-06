#Alınan notu yorumlayan program

def yorum(puan)
  if  puan<50
    a = "Başarısız"
  elsif puan<65
    a="orta"
  elsif puan<85
    a = "İyi"
  else
    a = "Çok İyi"
  end
  return a
end

def sor
  puts "Notunuzu giriniz"
  puan = gets.chomp.to_i
  soyle puan
end

def soyle(puan)
  puts yorum(puan)
end

sor
