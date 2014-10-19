Ractive = require 'ractive'
t = require 't7e'

links = [
  {html: t('span', 'navigation.classify'), href: "/classify"}
  {html: t('span', 'navigation.about'), href: "/about"}
  {html: t('span', 'navigation.profile'), href: "/profile" }
  {html: t('span', 'navigation.blog'), href: "http://blog.floatingforests.org"}
  {html: t('span', 'navigation.talk'), href: "http://talk.floatingforests.org"}
]

module?.exports = Ractive.extend
  el: '#navigation'
  template: require './navigation.html'

  data:
    siteTitle: t 'span', 'navigation.siteTitle'
    links: links
