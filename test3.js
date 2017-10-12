const path = require('path')
const parse = require('./parse')(path.basename(__filename, '.js') + '.pegjs')

parse('foo bar a b c')
// parse('abc foo foo a b c')
