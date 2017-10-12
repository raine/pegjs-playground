const pegjs = require('pegjs')
const path = require('path')
const fs = require('fs')
const util = require('util')

module.exports = (filename) => {
  const parser = pegjs.generate(fs.readFileSync(path.join(__dirname, filename), 'utf8'))
  return (input) => {
    try {
      console.log(util.inspect(parser.parse(input), { colors: true, depth: Infinity, maxArrayLength: Infinity }))
    } catch (e) {
      console.log(e.message)
      console.log(e.expected)
      console.log(e.location)
    }
  }
}
