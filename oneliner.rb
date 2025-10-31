
while (line = gets)
  # if /\\([a-z]+?){/ =~ line
  #   puts $1
  # end
  line.gsub!(/\\ig{.*?}/,"")
  # line.sub!(/\\chapter{(.*)}/, "# \\1")
  # line.sub!(/\\section{(.*)}/, "## \\1")
  # line.sub!(/\\subsection{(.*)}/, "## \\1")

  
  # line.gsub!(/\\citep\[(.*?)\]{(.*?)}/, "\\footnote{\\2, \\1}")
  # line.gsub!(/\\citep{(.*?)}/, "\\footnote{\\1}")
  # line.gsub!(/\\citet{(.*?)}/, "\\footnote{\\1}")
  #    line.gsub!(/\\ruby{(.*?)}{(.*?)}/,"［\\1］［ルビ:\\2］")
  #    line.gsub!(/\\kenten{(.*?)}/,"［●\\1●］")
  #    line.gsub!(/\\emph{(.*?)}/,"［*\\1*］")
  #    line.gsub!(/{\\DDASH}/, "──")
  #    line.gsub!(/_/, "-")
     puts line

end





__END__

while (line = gets)
     line.gsub!(/\\ruby{(.*?)}{(.*?)}/,"［\\1］［\\2］")
     line.gsub!(/\\kenten{(.*?)}/,"［●\\1●］")

    puts line
end




  


__END__

while (input = gets)

  input.gsub!(/(\\emph\{[^}]*\})/) do
    "\\colorbox{yellow}{#{Regexp.last_match(1)}}"
  end

  # \ruby{ターゲット}{ルビ} → ｛ターゲット｝{ルビ}
  input.gsub!(/\\ruby\{([^}]*)\}\{([^}]*)\}/) do
     "\\colorbox{yellow}{｛#{$1}｝｛ルビ:#{$2}｝}"
  end

  # input.gsub!(/(《.*》)/) do
  #   "\\colorbox{yellow}{#{Regexp.last_match(1)}}"
  # end

  # \kenten{ターゲット} → 《ターゲット》
   input.gsub!(/\\kenten\{([^}]*)\}/, "\\colorbox{yellow}{《\\1》}")
   puts input
  # input.gsub!(/(｛[^｝]*｝｛[^｝].*｝)/) do
  #   "\\textcolorbox{blue}{#{Regexp.last_match(1)}}"
  # end
end

  


  

