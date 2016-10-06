#programda yapılan tek değişiklik,
#programı fonksiyon içine almak oldu
def rastgele
  dizi=[]
  i=0
  while (i<6)
   dizi[i]=rand(1..49)
   i += 1
  end
  print dizi
 end
print rastgele
 
#for'la
def rastgele
  dizi = []
  for i in 1..6
    dizi<<rand(1..49)
  end
end

#upto ile
def rastgele
  dizi = []
    1.upto(6) do |sayi|
    dizi<<rand(1..49)  
  end
  return dizi
end