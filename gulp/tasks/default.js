// default task: 'gulp'

var gulp = require('gulp');

gulp.task('default', ['clean', 'serve','stylus', 'html', 'watch', 'browserify']);
