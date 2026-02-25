while (line = gets)

  line.chomp!
  line.gsub!(/\(.*\)$/,"")
  puts line
end
