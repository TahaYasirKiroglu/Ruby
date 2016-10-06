def  tam_bolenler(sayi)
  i=1
  tambolenler=[]
  if  sayi%2==0
   while  i<=(sayi/2)
     if  sayi%i== 0
       tambolenler << i
     end
    i+=1
   end
  else
   while  i<=(sayi/2)
     if  sayi%i== 0
       tambolenler << i
     end
    i+=2
   end
  end
  print tambolenler
end
