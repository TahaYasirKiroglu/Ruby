#encoding : UTF-8

def  mukemmelmi (bolunen)
  bolen, toplam = 1, 0
 while  (bolen < bolunen)
  if  (bolunen%bolen == 0)
   toplam+=bolen
  end
  bolen+=1
 end
 if  (bolunen == toplam)
  return  true
 else
  return  false
 end
end

if  (mukemmelmi(6)==true)
 puts "6 mükemmel bir sayıdır"
else
 puts " 6 mükemmel bir sayı değildir"
end
