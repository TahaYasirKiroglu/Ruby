#Taha Yasir Kıroğlu
#Boy-kilo endeksi
#(boy-100)-(boy-150)/4 yerine (3*boy-250)/4 kullanılmasıyla 1 işlem kârı var.
#(boy-100)-(boy-150)/2 yerine (boy- 50)/2 kullanılmasıyla 2 işlem kârı var.
print "Boy(cm) , Kilo(kg) ve Cinsiyet(e/k) değeri giriniz..."
uclu = gets.chomp
boy, kilo, cins = uclu.split
boy, kilo, cins = boy.to_i, kilo.to_i, cins.to_s
if  cins == "k"
  form = ((boy- 50)/2).to_i
else cins == "e"
  form = ((3*boy-250)/4).to_i
end
id = " İdeal kilonuza ulaşabilmeniz için "
 puts "ideal kilonuz: " + form.to_s
if   form == kilo
    puts  "Tebrikler ideal kilonuzdasınız..."
elsif  form.abs > kilo.abs
          puts id.to_s + (form - kilo).to_s + " kilo almalısınız..."
else  form.abs < kilo.abs
     puts id.to_s + ( kilo - form ).to_s + " kilo vermelisiniz..."
end
