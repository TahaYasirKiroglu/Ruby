(1..20).each do | bolen |
	i = 0
	(1..100).each do | bolunen |
		i += 1 if( bolunen % bolen ) == 0
		print "1'den 100'e kadar olan sayılardan #{ i } tanesi"
		puts  " #{ bolen } ile tam bölünür."
	end
end
