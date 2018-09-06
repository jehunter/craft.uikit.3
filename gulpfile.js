var gulp = require('gulp');
var sass = require('gulp-sass');
var minifyCSS = require('gulp-csso');
var babel = require('gulp-babel');
var concat = require('gulp-concat');
var sourcemaps = require('gulp-sourcemaps');

gulp.task('css', function(){
	return gulp.src('scss/site.scss')
		.pipe(sourcemaps.init())
	    .pipe(sass().on('error', sass.logError))
	    .pipe(sourcemaps.write())
	    .pipe(minifyCSS())
	    .pipe(gulp.dest('web/css'))
});

gulp.task('js', function(){
	return gulp.src('js/*.js')
		.pipe(sourcemaps.init())
		.pipe(babel({
		    presets: ['@babel/env']
		}))
		.pipe(concat('app.min.js'))
		.pipe(sourcemaps.write())
		.pipe(gulp.dest('web/js'))
});

gulp.task('default', ['css', 'js']);