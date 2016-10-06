#Taha Yasir Kiroglu

def put(ileti)
  puts ileti
end
def  sor(ileti)
  print ileti
  ileti = gets.chomp
end

country = File.read("ulkeler_baskentler.txt").split
user = File.read("login.txt").split
a, j = [user, country], 0
while  j<2
 i , kullanici = 0, a[j].size
 while  i<kullanici
   a[j][i] = a[j][i].split","
   i+=1
 end
j+=1
end

users, passwords, i = [], [], 0
while  i<user.size
  users<<user[i][0]
  passwords<<user[i][1]
  i+=1
end

ulke, baskent, i = [], [] ,0
while  i<country.size
  ulke<<country[i][0]
  baskent<<country[i][1]
  i+=1
end

komut = sor("Sisteme hoşgeldiniz.\n
Sistemi kullanmak için gerekli komutlar aşağıda listelenmiştir.\n
Giriş  yapmak için komut -> login\n
ülkenin başkentini bulmak için komut -> UlkeBaskent\n
Başkentin ülkesini bulmak için komut -> BaskentUlke\n
Çıkmak için komut -> Cıkıs\n
Komut giriniz: ")

while true
  if  komut=="login" || komut=="UlkeBaskent" || komut=="BaskentUlke"
    kullanici = sor("Kullanıcı adı giriniz: ")
    parola = sor("Parola Giriniz: ")
    until users.index(kullanici) == passwords.index(parola) && users.index(kullanici)
      kullanici = sor("Kullanıcı adı giriniz: ")
      parola = sor("Parola Giriniz: ")
    end
    put("Başarılı şekilde giriş yaptınız.")
    while true
      if  komut == "UlkeBaskent"
        capital = sor("Ülke adını giriniz: ")
        if ulke.index(capital)
          b = ulke.index(capital)
          put("Başkenti: "+baskent[b])
        else
          put("Girdiğiniz ülke adı, veri tabanımızda bulunmamaktadır.")
        end
      elsif komut == "BaskentUlke"
        capital = sor("Başkent adını giriniz: ")
        if baskent.index(capital)
          b = baskent.index(capital)
          put("Başkenti olduğu ülke: "+ulke[b])
        else
          put("Girdiğiniz başkent adı, veri tabanımızda bulunmamaktadır.")
        end
      elsif komut == "Cıkıs"
         put("Güle Güle")
         exit
      elsif komut == "login"
        put("Sisteme giriş yapmış görünmektesiniz.")
      else
        put("Hatalı bir komut girdiniz!")
      end
      komut=sor("Komut giriniz:")
    end
  elsif komut == "Cıkıs"
     put("Güle Güle")
     exit
  else
     komut = sor("Hatalı bir komut girdiniz!\nKomut giriniz: ")
  end
end
