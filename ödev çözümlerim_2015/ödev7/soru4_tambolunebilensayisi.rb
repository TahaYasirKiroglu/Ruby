(1..20).each do |bolen|
  i = 0
  (1..100).each{ |bolunen| i += 1 if bolunen % bolen==0}
  puts "1'den 100'e kadar olan sayılardan #{i} tanesi"+
  " #{bolen} ile tam bölünür."
end
