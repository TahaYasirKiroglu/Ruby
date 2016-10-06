list = File.read("liste.txt").split
a_max, a_min = list[0], list[0]
list.each do |a|
  if a_max.length < a.length
    a_max = a
  elsif a_min.length > a.length
    a_min = a
  end
end
puts "En uzun kelime:#{a_max}\nEn kısa kelime:#{a_min}"
