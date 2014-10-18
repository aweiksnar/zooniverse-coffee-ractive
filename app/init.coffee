$ = window.jQuery

Api = require 'zooniverse/lib/api'
enUs = require './translations/en-us'
Footer = require 'zooniverse/controllers/footer'
page = require 'page'
t7e = require 't7e'
TopBar = require 'zooniverse/controllers/top-bar'

api = new Api project: 'kelp'   # change this to your projects api name

topBar = new TopBar
topBar.el.appendTo document.body

page '/', -> console.log "Home"
page '/classify', -> console.log "Classify Page"
page '/about', -> console.log "About Page"
page()

footer = new Footer
footer.el.appendTo document.body.appendChild document.createElement 'footer'

console.log "worked"
