const parse = require('./parse')('test2.pegjs')

parse('abc b a xyz c foo bar c')
parse('foo bar xyz a b c lol test')
