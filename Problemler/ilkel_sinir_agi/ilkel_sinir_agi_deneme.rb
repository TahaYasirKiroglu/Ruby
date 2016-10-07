#encoding : utf-8
class YapaySinirAgi 
  private
  def  initialize( x_ler, istenen, epsilon, esik )
     @x_ler, @istenen = x_ler, istenen
     @Epsilon , @esik = epsilon, esik
  end
  def  kol_kontrol( w_ler, gercek, sira )
     toplam = -( @esik )
     0.upto( w_ler.size-1 ) do |i|
       d = @x_ler[sira][i] * w_ler[i]
       toplam += d
     end
     toplam = ayarla(toplam)
     gercek.fill( toplam, sira, 1)
     hata = @istenen[sira] - gercek[sira] #Y_istenen-Y_gercek
     if( hata != 0 ) #0'sa sayi degismez
       duzelt( w_ler, @x_ler[sira], hata )
     end
  end
 #verilen sayi 0'dan buyukse 1 yapar.
  def  ayarla(toplam)
     if toplam > 0
       return 1 
     else
       return 0
     end
  end
  def  duzelt( w_ler, x_ler, hata)
     0.upto( w_ler.size-1 ) do |i|
         w_ler[i]=w_ler[i]+hata*@Epsilon*x_ler[i]
     end
  end
  def  basari_bul( gercek )
     dogru = 0.0 #dogru islem sayaci
     0.upto( @istenen.size-1 ) do |i|
       if (@istenen[i]-gercek[i]) == 0
         dogru+=1
       end
     end 
     dogru = (dogru/@istenen.size)*100
  end
  public
  def  sistem_tarama( w_ler,gercek )
     toplam, sayac = 0, 0
     basari = 1 #programın basarısı
     until ( basari == 100 ) #%100 basariya kadar calıs
       sayac = sayac + 1
       puts "deneme #{sayac}\n"
       puts " ->denenen: #{w_ler}"
       0.upto(@x_ler.size-1) do |j|
          kol_kontrol( w_ler, gercek, j)
       end
       basari = basari_bul( gercek )
       puts" -->basarı payı: %#{basari}"
     end
     puts "sonuc: #{w_ler}"
  end
end
