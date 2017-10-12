start
  = pair+

pair
  = words:word+ chars:special_char_group {
    return {
      words: words.join(' '),
      chars: chars.trim()
    }
  }

word 'word'
  = (!special_char) w:$(letter+) ws? { return w }

special_char_group 'special char group'
  = $((special_char (ws / end))+)

special_char 'special char'
  = c:('a' / 'b' / 'c') (& ws / end) { return c }

letter 'letter'
  = [a-z]

ws 'whitespace'
  = [ ]

end 'end of input'
  = !.
