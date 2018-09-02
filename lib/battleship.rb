puts ""
puts "Welcome to BATTLESHIP"
puts ""
puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
print ">"

reply = gets.chomp.to_s.downcase
if reply == "p"
  p "Show ship layout"
elsif reply == "i"
  p "Show instructions"
elsif reply == "q"
end


