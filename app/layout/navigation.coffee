Ractive = require 'ractive'
t = require 't7e'

module?.exports = Ractive.extend
  el: '#navigation'
  template: require './navigation.html'

  data:
    siteTitle: t 'span', 'navigation.siteTitle'
    classify: t 'span', 'navigation.classify'
    about: t 'span', 'navigation.about'
    profile: t 'span', 'navigation.profile'
    blog: t 'span', 'navigation.blog'
    talk: t 'span', 'navigation.talk'
