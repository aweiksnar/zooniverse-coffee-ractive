Ractive = require 'ractive'

module?.exports = Ractive.extend
  el: '#main'
  template: require './profile.html'

  data:
    title: "Your Profile"
