Ractive = require 'ractive'
t = require 't7e'

module?.exports = Ractive.extend
  el: "#main"
  template: require './classify.html'

  data:
    title: t 'span', 'classify.title'

  oninit: -> console.log "Classify Page"
