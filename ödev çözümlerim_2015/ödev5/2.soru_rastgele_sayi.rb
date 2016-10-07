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
