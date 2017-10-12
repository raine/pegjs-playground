{
  function fixSlash(str) {
    return str.replace(/\s*\/\s*/, ' / ')
  }
}

start
  = foods+

foods
  = x:food_with_diet    (food_separator / end) { return x }
  / x:food_without_diet (food_separator / end) { return x }

food_without_diet 'food without diet'
  = food:words {
    return { food: fixSlash(food) }
  }

food_with_diet 'food with diet'
  = food:words diet:diet_option_group {
    return { food: fixSlash(food), diet }
  }

food_separator 'food separator'
  = 'ja' _
  / ',' _
  / '/'

words 'words'
  = words:word_with_end+ { return words.join(' ') }

word_with_end 'word with end'
  = _* (!diet_option_group) w:word (_ / end) { return w }
 
special_char
  = [-!$%^&*()_+|~=`{}\[\]:/;<>?,.@#´]

word 'word'
  = $(letter / special_char)+

space_or_end 'space or end'
  = _ / end

diet_option_group 'diet option group'
  = ds:(d:diet_option space_or_end { return d })+ (!diet_option)? { return ds }

diet_option 'diet option'
  = 'L'
  / 'G'
  / 'M'
  / 'VL'
  / 'VEG'

end
  = !.

slash
  = '/'

letter 'letter'
  = [0-9A-Za-z\u00c0-\u00d6\u00d8-\u00f6\u00f8-\u02af\u1d00-\u1d25\u1d62-\u1d65\u1d6b-\u1d77\u1d79-\u1d9a\u1e00-\u1eff\u2090-\u2094\u2184-\u2184\u2488-\u2490\u271d-\u271d\u2c60-\u2c7c\u2c7e-\u2c7f\ua722-\ua76f\ua771-\ua787\ua78b-\ua78c\ua7fb-\ua7ff\ufb00-\ufb06]

_ 'space'
  = [ ]
