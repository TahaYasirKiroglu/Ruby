decimal=13
i, output = 0, ""
while  (decimal > 0)
 i=decimal%2
 output=output+"#{i}"
 decimal=decimal/2
end
output=output.reverse.to_i
puts output
