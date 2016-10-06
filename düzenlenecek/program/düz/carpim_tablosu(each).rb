(1..9).each do |dikey|
   line = ""
   (1..9).each{ |yatay| line += "#{dikey * yatay}\t"}

   puts line
end
