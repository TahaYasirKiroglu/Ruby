#encoding : UTF-8
require  'io/console'

def  sor(ileti)
 print "#{ileti}: "
 girdi=gets.chomp
 return girdi
end

def  kaydet(veri)
 puts "Seçmiş olduğunuz '#{veri}' parolanız başarılı bir şekilde kaydedildi."
end

def  turkce_kontrol(parola)
 if  (parola.include? "x")
  return  false
 else
  return  true
 end
end

def  karakter_uzunlugu(parola)
 if  (3 > parola.length || (parola.size) > 6)
  return false
 else
  return true
 end
end

while  true
 while  true
  a=sor("Parolayı giriniz ")
  if  turkce_kontrol(a) && karakter_uzunlugu(a)
    break
  else
   puts "Parolanız 'x' karakterini içermemeli ve en az 3 en çok 6 karakter uzunluğunda olmalı."
  end
 end
 b=sor("Parolayı tekrar giriniz ")
 if  a==b
  kaydet(a)
  break
 else
  puts "Yanlış bir parola girdiniz. Lütfen işlemi tekrar ediniz. "
 end
end
