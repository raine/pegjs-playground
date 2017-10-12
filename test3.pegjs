start
  = p:part+ { return p.filter(Boolean) }

part
  = c:special_char { return { char: c } }
  / w:word { return { word: w } }
  / ws { return null }

word 'word'
  = $(letter+)

special_char 'special char'
  = c:('a' / 'b' / 'c') (& ws / end) { return c }

letter 'letter'
  = [a-z]

ws 'whitespace'
  = [ ]

end 'end of input'
  = !.
