start 'start'
  = (x:word_or_abc ws? { return x })+

word_or_abc
  = c:abc_with_end  { return { char: c } }
  / w:word          { return { word: w } }

word 'word'
  = $(letter+)

abc_with_end
  = x:abc (ws / end) { return x}

abc
  = 'a' / 'b' / 'c'

letter 'letter'
  = [a-z]

ws 'whitespace'
  = [ ]

end 'end of input'
  = !.
