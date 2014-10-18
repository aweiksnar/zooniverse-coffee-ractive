var gulp = require('gulp')
var static = require('node-static');
var config = require('../config').server;

gulp.task('serve', function(){
  var file = new static.Server(config.file);

  require('http').createServer(function (request, response) {
      request.addListener('end', function () {
          file.serve(request, response);
      }).resume();
  }).listen(config.port);

  console.log("server started on port", config.port);
});

