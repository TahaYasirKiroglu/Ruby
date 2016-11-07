#programda yapılan tek değişiklik,
#programı fonksiyon içine almak oldu
def rastgele
  dizi = []
  i = 0
  while (i<6)
    dizi[i] = rand(1..49)
    i += 1
  end
end
print rastgele

def rastgele_v2( i = 6 )
  dizi=[]
  i.times { dizi << rand(1..49) }
  return dizi
end

print rastgele
