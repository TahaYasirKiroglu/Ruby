#encoding : utf-8
agac = [1,[[2,[[4,[]],[5,[]]]],[3,[[6,[]],[7,[]]]]]]
stack = []

Aranan_eleman = 7

def  aranan_mi?(stack) #aranan eleman mi?
   if  stack[0] == Aranan_eleman
      puts "Aranan eleman ' #{Aranan_eleman} ' bulundu."
      puts  stack.reverse.join("->")  #stack.join("<-") düzenli gözükmesi için
      exit
   end
      puts "Aranan eleman ' #{stack[0]} ' değilmiş!" #Bakılan elemanları verir.
end

def  boyuna_arama(agac, stack)
  unless agac.empty?       #eğer agac bos degilse
     agac = agac[1]
         aranan_mi?(stack)    #aran eleman mi?
       (agac.size-1).downto(0) do |i| #ağaçta soldan başlaması için
         stack.unshift(agac[i][0])    #cocuğu stack'e at
         boyuna_arama(agac[i],stack)        
       end
  end
  stack.shift #stackteki elemanı sil
end

stack<< agac[0]  #ilk elemanı stack 'e at 
boyuna_arama( agac, stack )  
puts "Aranan eleman bulunamadi!!!"
