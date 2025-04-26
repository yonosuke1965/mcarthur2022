require 'open-uri'

replacement_file = "index-word.tsv"
input_file = "mcarthur.tex"
output_file = "indexed.tex"

replacements = {}
targets = Array.new

# url = 'https://docs.google.com/spreadsheets/d/1hevdKiiRsZmYbrwLDE-5RF3udNZ0yL0hc_qQevHw9cs/export?format=tsv'



# 置き換えリストをつくる ひっかける文字列 => 見出し
File.foreach(replacement_file) do | line |
  line.chomp!
  line.sub(/\t+$/,"")
  japanese, english, *targets = line.strip.split("\t")
  next if  japanese == nil || japanese == ""
  next if targets.length == 0

#  最初の2項目が同じなら英語だけ
  if japanese == english
    midasi = english
  else
  midasi = "#{japanese} (#{english})"
  end

  targets.each do | i |
    replacements[i] = "\\index{#{midasi}}" unless i == ""
  end
end


# 本文を1行ずつプロセス

processed = Array.new

File.readlines(input_file, chomp: true).map do |line|
  prefixes = replacements.select { |a, _b| line.include?(a) }.values
  prefixes.uniq!                # ユニークにする
  processed << "#{prefixes.join}#{line}"     # 行頭にindexを
end


# 出力
File.write(output_file, processed.join("\n"))
# print processed.join("\n")

