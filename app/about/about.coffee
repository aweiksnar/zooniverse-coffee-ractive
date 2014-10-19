Ractive = require 'ractive'
t = require 't7e'

module?.exports = Ractive.extend
  el: "#main"
  template: require "./about.html"

  data:
    title: t 'span', 'about.title'

  oninit: ->
    console.log "About Page"
