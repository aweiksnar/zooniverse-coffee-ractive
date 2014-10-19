$ = window.jQuery

enUs = require './translations/en-us'
t7e = require 't7e'
t7e.load enUs

Api = require 'zooniverse/lib/api'
Footer = require 'zooniverse/controllers/footer'
TopBar = require 'zooniverse/controllers/top-bar'
page = require 'page'

# Config
api = new Api project: 'kelp' # change this to your projects api name

# Top Bar
topBar = new TopBar
topBar.el.appendTo document.body

# Layout
Navigation = require './layout/navigation'
siteNav = new Navigation

# App Pages
Home = require './home/home'
Classify = require './classify/classify'
About = require './about/about'
Profile = require './profile/profile'

# Router
page '/', -> new Home
page '/classify', -> new Classify
page '/about', -> new About
page '/profile', -> new Profile
page '*', -> console.error "404 Not found"
page()

# Footer
footer = new Footer
footer.el.appendTo document.body.appendChild document.createElement 'footer'

console.log "worked"
