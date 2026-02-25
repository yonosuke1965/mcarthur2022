
while list = gets do
  list.chomp!
  (midasi, eigo) = list.split("\t")
  if midasi.is_a?(String) and eigo.is_a?(String) and midasi != eigo
    midasi = midasi + " (" + eigo + ")"
  puts midasi
  else
    puts midasi
  
  end


  

end
