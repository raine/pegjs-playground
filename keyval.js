const pegjs = require('pegjs')
const path = require('path')
const fs = require('fs')

const parser = pegjs.generate(fs.readFileSync(path.join(__dirname, 'keyval.pegjs'), 'utf8'))
const output = parser.parse('city=bangalore;address=#12/1;santacruz')

console.log(require('util').inspect(output, { colors: true, depth: Infinity }))
