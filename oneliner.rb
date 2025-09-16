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

  


  

