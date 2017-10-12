const parse = require('./parse')('parens.pegjs')

parse(
  "(in here there can be 'anything' !\"#¤);); any character is possible);"
)
