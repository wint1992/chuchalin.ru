"use strict";

var gulp = require('gulp');
var concat = require('gulp-concat');
var sass = require('gulp-sass');
var less = require('gulp-less');
var uglify = require('gulp-uglify');
var minifyCss = require('gulp-minify-css');
var csso = require('gulp-csso');
var connect = require('gulp-connect');
var autoprefixer = require('gulp-autoprefixer');
var typescript = require('gulp-tsc');

var components = './node_modules/';

gulp.task('connect', function() {
  connect.server({
    root: 'app',
 	 port: 8001,
    livereload: true
  });
});

gulp.task('connectStop', function() {
  connect.serverClose();
});
 
gulp.task('connectReload', function () {
  gulp.src(['./app/**/*.html', './app/js/*.js'])
    .pipe(connect.reload());
});

gulp.task('concatUsageJS', function(){
	return gulp.src([
						// for Angular 2
//						components + 'core-js/client/shim.min.js',
//						components + 'zone.js/dist/zone.js',
//						components + 'reflect-metadata/Reflect.js',
//						components + 'systemjs/dist/system.src.js'
					])
			.pipe(concat('usage_components.js'))
			.pipe(gulp.dest('./app/js/'));
});

gulp.task('usageBootstrap', function(){
	return gulp.src([
						components + 'bootstrap/less/mybootstrap.less'
					])
				.pipe(less({
      						paths: components + 'bootstrap/less/mixins'
    					}))
				.pipe(concat('bootstrap.min.css'))
				.pipe(csso())
				.pipe(minifyCss())
				.pipe(gulp.dest(components + 'bootstrap/myUsageBootstrap/'));
});

gulp.task('concatUsageCSS', ['usageBootstrap'], function(){
	return gulp.src([
						// Reset CSS
						components + 'reset-css/reset.css',
						// Bootstrap CSS
						components + 'bootstrap/myUsageBootstrap/bootstrap.min.css'
					])
			.pipe(csso())
			.pipe(minifyCss())
			.pipe(concat('usage_components.css'))
			.pipe(gulp.dest('./app/css/'));
});

gulp.task('compileSass', function(){
	return gulp.src('./app/sass/style.scss')
			.pipe(sass().on('error', sass.logError))
			.pipe(concat('style.css'))
			// .pipe(autoprefixer('last 2 versions'))
			.pipe(csso())
			.pipe(minifyCss())
			.pipe(gulp.dest('./app/css/'))
			.pipe(connect.reload());
});

gulp.task('compileTS', function(){
	return gulp.src('./app/angularApp/**/*.ts')
		.pipe(typescript({
			"target": "es5",
    		"module": "commonjs",
    		"moduleResolution": "node",
    		"sourceMap": true,
    		"emitDecoratorMetadata": true,
    		"experimentalDecorators": true,
    		"removeComments": false,
    		"noImplicitAny": false
		})).on('error', function(){})
		.pipe(gulp.dest('./app/js/'))
		;
});

gulp.task('watch', function(){
	gulp.watch(['./app/**/*.html', './app/js/*.js'], ['connectReload']);
	gulp.watch('./app/angularApp/**/*.ts', ['compileTS']);
});
gulp.task('default', ['connect', 'watch']);
