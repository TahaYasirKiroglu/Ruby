def islem (x)
	func = x**10 - 1
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
def xr_bul (alt, ust, yontem = 1)
	if (yontem == 0) # yontem 0'sa dogrusal yöntem çalışacak
		xR = ust - ((islem(ust) * (alt-ust))/(islem(alt) - islem(ust)))
	elsif (yontem == 1) # yontem 1'se ikiye bölme yöntemi çalışacak
		xR = (alt + ust) / 2.0
	end
	return xR
end

def hata_payi_bul (xR, xR_eski)
	return ((xR - xR_eski) / xR).abs * 100
end

def kok_bul (yontem, ust, alt=0, hata_siniri=0, xR_eski=0, adim=0)
	if (islem(alt) * islem(ust) < 0 ) # adim1
		adim, flag = adim + 1 , 0
		xR = xr_bul(alt, ust, yontem) #adim 2
			
		hata_payi = hata_payi_bul(xR, xR_eski)

		tablo_bas(alt, ust, adim, xR, hata_payi)
		if(hata_payi > hata_siniri)
			sonuc = islem(xR) * islem(alt) 
			if(islem(xR) * islem(alt) < 0)
				kok_bul( yontem, alt, xR, hata_siniri, xR, adim)
			elsif(islem(xR) * islem(alt) > 0)
				kok_bul( yontem, xR, ust, hata_siniri, xR, adim)
			else
				flag = 1
			end
		else
			flag = 1
		end
		kok_bas(xR) if (flag == 1)
	end
end

puts "Adım\tXa\tXü\tXr\tf(Xa)\tf(Xü)\tf(Xr)\tHata Payı"

kok_bul(0, 1.3)
