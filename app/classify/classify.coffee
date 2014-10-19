Ractive = require 'ractive'
t = require 't7e'
Tutorial = require 'slide-tutorial'
slides = require './tutorial-slides'

module?.exports = Ractive.extend
  el: "#main"
  template: require './classify.html'

  data:
    title: t 'span', 'classify.title'
    tutorial: t 'span', 'classify.tutorial'

  onconstruct: ->
    @tutorial = new Tutorial
      slides: slides

  oninit: -> console.log "Classify Page"

  startTutorial: -> @tutorial.start()
