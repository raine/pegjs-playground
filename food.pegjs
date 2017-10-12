start
  = (f:food food_separator? { return f })+

food_separator 'food separator'
  = 'ja' ws
  / ',' ws
  / '/' ws
  / ws

food
  = food_with_diet
  / food_without_diet

food_with_diet = food:words diet:diet_option_group {
  return { food, diet }
}

food_without_diet
  = words { return { food: text(), diet: null }}

words
  = xs:word+ { return xs.join(' ') }

food_char
  = letter / special_char

word 'word'
  = (!diet_option_end) w:$(food_char+) ws? { return w }

diet_option_group 'diet option group'
  = (d:diet_option (ws / end / !letter) { return d })+

diet_option 'diet option'
  = 'L'
  / 'G'
  / 'M'
  / 'VL'
  / 'VEG'

diet_option_end
  = c:diet_option (& ws / end / !letter) { return c }

ws 'whitespace'
  = [ ]

end 'end of input'
  = !.

special_char
  = [-!$%^&*()_+|~=`{}\[\]:/;<>?,.@#´]

letter 'letter'
  = [0-9A-Za-z\u00c0-\u00d6\u00d8-\u00f6\u00f8-\u02af\u1d00-\u1d25\u1d62-\u1d65\u1d6b-\u1d77\u1d79-\u1d9a\u1e00-\u1eff\u2090-\u2094\u2184-\u2184\u2488-\u2490\u271d-\u271d\u2c60-\u2c7c\u2c7e-\u2c7f\ua722-\ua76f\ua771-\ua787\ua78b-\ua78c\ua7fb-\ua7ff\ufb00-\ufb06]
