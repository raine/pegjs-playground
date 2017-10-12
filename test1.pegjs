start 'start'
  = words_and_char+

words_and_char 'words and abc char'
  = w:word_with_end+ c:abc {
    return { words: w, char: c }
  }

word_with_end 'word with end'
  = !(abc) w:word ws? { return w }

word 'word'
  = $(char+)

char 'char'
  = [a-z]

ws 'whitespace'
  = [ \t]

end 'word boundary'
  = !.

abc
  = 'a' / 'b' / 'c'
