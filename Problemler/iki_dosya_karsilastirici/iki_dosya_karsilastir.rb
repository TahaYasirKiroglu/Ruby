org = Dir.new('org')
simi = Dir.new('simi')

o = org.map{ |word| word[0..7]}
s = simi.map{ |word| word[0..7]}

puts "o icin #{o.size}"
puts "s icin #{s.size}"

o.uniq!
s.uniq!

puts "o icin uniq #{o.size}"
puts "s icin uniq #{s.size}"

puts "o'nun s'den farkları"
p o-s
