def islem (x)
	func = x**2
	return func
end
def tablo_bas (alt, ust, adim, xR, hata_payi)
	print "#{adim}\t#{alt.round(4)}\t#{ust.round(4)}\t"
	print "#{xR.round(4)}\t#{islem(alt).round(4)}\t"
	print "#{islem(ust).round(4)}\t#{islem(xR).round(4)}\t"
	puts  "#{hata_payi}"
end
def kok_bas (xR)
	 puts "Kök: #{xR}"
end
def xr_bul (alt, ust)
	return (alt + ust) / 2.0
end
def hata_payi (xR, xR_eski)
	return ((xR - xR_eski) / xR).abs * 100
end
# kesin kök olduğunu bildiğimizden kök var mı diye kontrol etmiyor
def kok_hesapla (istenen, hata_siniri=0, xR_eski=0, adim=0, ust=istenen, alt=0)
	xR = xr_bul(alt, ust)
	adim += 1
	flag = 0
	hata_payi = hata_payi(xR, xR_eski)
	tablo_bas(alt, ust, adim, xR, hata_payi)
	if (hata_payi > hata_siniri && alt != ust)
		sonuc = islem(xR)

		if (sonuc < istenen)
			kok_hesapla(istenen,hata_siniri, xR, adim, ust, xR)
		elsif (sonuc > istenen)
			kok_hesapla(istenen, hata_siniri, xR, adim, xR, alt)
		else
			flag = 1
		end
	else
		flag = 1
	end
	kok_bas(xR) if (flag == 1)
end

puts "Adım\tXa\tXü\tXr\tf(Xa)\tf(Xü)\tf(Xr)\tHata Payı"

kok_hesapla(3)
