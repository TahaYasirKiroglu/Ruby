1.upto(100) do |fizzybuzzy|
     if ( fizzybuzzy%3 == 0 )
             str=""
             if a%3
               str= "fizz"
             end
             if a%5
                str+="buzz"
             else
                str = "#{fizzybuzzy}"
             end
             puts str
end
