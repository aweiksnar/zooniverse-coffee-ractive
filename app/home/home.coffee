Ractive = require 'ractive'
page = require 'page'
t = require 't7e'

module?.exports = Ractive.extend
  el: "#main"
  template: require './home.html'

  data:
    title: t 'span', 'home.projectName'
    callToAction: t 'span', 'home.callToAction'

  oninit: -> console.log "Home Page"

