#encoding : utf-8
require 'io/console' # getch icin
require 'timeout' # sure icin
def kurallar()
	puts "\n\n\nBizzBuzz"
	puts "Oyunun kurallari basit:"
	puts "-> 1'den başlayarak 1'er artan olarak sayi yazacaksınız."
	puts "-> Tahmininiz eğer 3'ün tam katiysa \'Bizz\',"
	puts "-> 5'in tam katiysa \'Buzz\'"
	puts "-> Her ikisinin tam katiysa \'Bizzbuzz\' yazacaksiniz."
	puts "-> 3'un ve 5'in tam katlari haric diger sayilar icin"
	puts "-> sayinin numerik karsiligini yazacaksiniz..."
	puts "-> Her cevap icin 10 saniye cevap sureniz var."
	puts "\n\nBasarılar...\n"
end
def bizzBuzzi_ne(sayi)
	str = ""
	str += "bizz" if sayi%3 == 0
	str += "buzz" if sayi%5 == 0
	str += "#{sayi}" if str.empty?
	return str
end
def kac_kisi( )
	print "\nBilgisayar haric kac kullanici olacak? "
	kisi = gets.chomp.to_i
	if (kisi.class != Fixnum) || kisi < 1
		puts "\nUYARI: Hatali oyuncu sayisi girisi! Oyun bir kisi icin baslatiliyor..."
		return 1
	else
		puts "\nOyun #{kisi} icin baslatiliyor..."
		return kisi
	end 
end
def tahmin_al( sira )
	print "#{sira}. oyuncu:\t"
	tahmin=""
	Timeout::timeout(10) { # Cevabi 10saniye bekle
		tahmin = gets.chomp.downcase
	}
	rescue Timeout::Error # Eger cevap 10 icinde gelmezse uyari versin
		puts "\nZaman doldu!!!"

	return tahmin
end
def bizzBuzz( )
	kurallar()
	kSayisi = kac_kisi() + 1
	system 'clear' # windows icin system '@cls'
	iSayi = 1
	puts "Bilgisayar:\t1"
	sSayi = ""
	while true
		iSayi += 1
		sSayi = bizzBuzzi_ne(iSayi)
		if ((iSayi%kSayisi) == 1)
			puts "Bilgisayar:\t#{sSayi}"
		elsif !( sSayi == tahmin_al((iSayi-1)%kSayisi) )
			break
		end
	end	
	sSayi = (iSayi-1)%kSayisi
	puts "\n\n#{sSayi}. oyuncu kaybetti!"
	puts "Cikmak icin bir tusa basiniz..."
	STDIN.getch
	return sSayi
end
a = bizzBuzz()

