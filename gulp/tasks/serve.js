var gulp = require('gulp')
var server = require('pushstate-server')
var config = require('../config').server;

gulp.task('serve', function(){
  server.start({
      port: config.port,
      directory: config.dir
  });
  console.log("server started on port", config.port);
});

