(1..7).each do |at|
 if  at<5
  puts " "*(4-at)+"* "*at
 else
  puts " "*(at%4)+"* "*(4-(at%4))
 end
end
