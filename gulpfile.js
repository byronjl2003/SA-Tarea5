const gulp = require('gulp');
const zip = require('gulp-zip');

gulp.task('default', () => {
  return gulp.src([ './**/*.js']) // Here I'm excluding .min.js files
    .pipe(zip('archive.zip'))
    .pipe(gulp.dest('dist'));
});