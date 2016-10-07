#encoding : utf-8
# asagidaki sekilde verilen dizide enine arama yapar
# eksiklikler : class yapısıyla kurulması lazim
agac=[1,[[2,[[4,[]],[5,[]]]],[3,[[6,[]],[7,[]]]]]]
kuyruk=[]

Aranan_eleman = 5

def  aranan_mi?(agac) #aranan eleman mi?
   if  agac[0] == Aranan_eleman
      puts "Aranan eleman ' #{Aranan_eleman} ' bulundu."
      exit
   end
   puts "Aranan eleman ' #{agac[0]} ' değilmiş!" #Bakılan elemanları verir.
   agac.shift  #elemanı kuyruktan sil
end

def  enine_arama(agac, kuyruk)
  if  !(agac.empty?)        #eğer agac bos degilse
      aranan_mi?(kuyruk)    #aran eleman mi? 
      agac = agac[1]   #cocukların oldugu diziyi esitliyor
      0.upto(agac.size-1){ |i| kuyruk<< agac[i][0] } #cocukları kuyruga at
      0.upto(agac.size-1){ |i| enine_arama(agac[i],kuyruk) }
  end
end

kuyruk<< agac[0]  #ilk elemanı kuyruğa at 
enine_arama(agac,kuyruk)  
puts "Aranan eleman bulunamadi!!!"
