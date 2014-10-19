Ractive = require 'ractive'

module?.exports = Ractive.extend
  el: '#navigation'
  template: require './navigation.html'

  data:
    siteTitle: "Zooniverse App"
    classify: "Classify"
    about: "About"
    profile: "Profile"
    blog: "Blog"
    talk: "Talk"
