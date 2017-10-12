const path = require('path')
const parse = require('./parse')(path.basename(__filename, '.js') + '.pegjs')

parse('foo bar a b c abc a b coogle b c a')
