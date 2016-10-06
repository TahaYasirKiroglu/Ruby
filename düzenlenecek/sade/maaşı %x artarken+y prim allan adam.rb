#07.11.2015 06.14
#1/20 yerine %kaç arttığı yazılacak
#1000 yerine de kaç lira artıdan para aldığı yazılacak
a=50000.to_f
i=0
until  i == 18
  i += 1
  a = a * 1/20 + a + 1000
  print i.to_s+"-"
  puts a
end
