def decimal(x)
 i, binary = 0, ""
 while  x>0
  i = x%2
  binary= "#{i}"+binary
  x = x/2
 end
 #if you would integer
 #binary = binary.to_i
end

