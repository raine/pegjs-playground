const parse = require('./parse')('ruoka.pegjs')

parse(
  'Runsaasti kauden kasviksista tehtyjä salaatteja ja proteiinilisukkeena Polar-juustoa L G ja Katkarapu-korianteri chevicheä M G'
  'Kauden salaatteja ja proteiinilisukkeena juustokuutioita L G ja Chorizopyörykkäsalaattia M G'
  'Kauden salaatteja ja proteiinilisukkeena juustokuutioita L G M ja Kurpitsaa L G M'
  'Uunikirjolohta/ Tilliperunasosetta',
  'Luomugranolaa M',
  'Runsaasti kauden kasviksista tehtyjä salaatteja ja proteiinilisukkeena Raejuustoa'
  'Runsaasti kauden kasviksista tehtyjä salaatteja ja  proteiinilisukkeena ' +
  'Leipäjuustoa VL G ja Mustennettua broileria VL G'
  'Mustikkarahkaa L G, Test'
  'Paahtopaistisalaattia M / Paahdettua vuohenjuustosalaattia VL / Kasvis-pastasalaattia M'
)
