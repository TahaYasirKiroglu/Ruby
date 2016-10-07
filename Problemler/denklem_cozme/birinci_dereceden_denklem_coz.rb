#encoding : utf-8
#bu program birinci dereceden iki bilinmeyenli 
#pozitif ve tam sayı hallerini çözer.
 
def  iki_bilinmeyenli_coz( a, b, c)
  j, sayac = 0, 0
  x_orjinal = 'x'
  y_orjinal = 'y'
  if( a < b ) #işlem tasarrufu için
    a, b = b, a
    x_orjinal, y_orjinal =y_orjinal, x_orjinal
  end
  0.upto( c/a ) do |x|
    0.upto( c/b ) do |y|
      sayac, denklem = sayac+1, a*x+b*y
      if( denklem > c )
        break
      elsif( denklem == c )
        puts "#{x_orjinal}: #{x} ,#{y_orjinal}: #{y}"
        puts "-->#{sayac}. kez"
        j += 1
        break
      end #end of if
    end #end of upto y
  end#end of upto x

  if (j == 0) 
     puts "Kök yok"
  else
     puts "#{j} çözüm yolu bulundu."
  end
  return sayac
end#end of def



togri = iki_bilinmeyenli_coz( 29, 33, 2490)
puts "toplam işlem sayısı: #{togri}"