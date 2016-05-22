'use strict';

/*********************
 * Begin Configuration
 */
var themeDirectory = 'kleo-child';
var assetsPath = './public_html/content/themes/' + themeDirectory + '/assets/';

// Run `gulp production` to build for production
// or set this to true to always build for production
var production = false;

/**
 * JS Assets
 */
var jsFiles = [
    './src/js/**/*.js'
];

/**
 * Additional CSS assets
 */
var cssFiles = [
    // An array of paths to CSS files
];

/**
 * SASS assets
 */
var sassFiles = [
    './src/scss/**/*.scss'
];

var tasks = [
    'javascript',
    // 'templates', // For handlebar templates
    'css',
    'move:images',
    'watch'
];

/**
 * Utilities
 */
var gulp        = require('gulp');
var uglify      = require('gulp-uglify');
var concat      = require('gulp-concat');
var watch       = require('gulp-watch');
var sass        = require('gulp-sass');
var es          = require('event-stream');
var del         = require('del');
var runSequence = require('run-sequence');

/**
 * Required for Handlebars
 */
//var handlebars  = require('gulp-handlebars');
//var wrap        = require('gulp-wrap');
//var declare     = require('gulp-declare');

/**
 * End Configuration
 ******************/

/**
 * CSS and SCSS
 */
gulp.task('css', function() {
    var css = gulp.src(cssFiles);
    var scss = gulp.src(sassFiles)
        .pipe(sass());

    return es.concat(css, scss)
        .pipe(concat('app.css'))
        .pipe(gulp.dest(assetsPath + 'css/'));
});

/**
 * Javascript
 */
gulp.task('javascript', function() {
    var stream = gulp.src(jsFiles);
    // if this is production mode, minify the JS
    if(production) {
        stream = stream.pipe(uglify());
    }

    return stream.pipe(concat('app.js'))
        .pipe(gulp.dest(assetsPath + 'js/'));
});

/**
 * Templates
 */
gulp.task('templates', function() {
    return gulp.src('./src/templates/**/*.hbs')
        .pipe(handlebars({
            handlebars: require('handlebars')
        }))
        .pipe(wrap('Handlebars.template(<%= contents %>)'))
        .pipe(declare({
            namespace: 'templates',
            noRedeclare: true // Avoid duplicate declarations
        }))
        .pipe(concat('templates.js'))
        .pipe(gulp.dest(assetsPath + 'js/'));
});

/**
 * Images
 */
gulp.task('clean:images', function(cb){
    del([assetsPath + 'images/*'], cb);
});

gulp.task('move:images',['clean:images'], function(){
    gulp.src(['./src/images/**/*.*'], { base: './src/images' })
        .pipe(gulp.dest(assetsPath + 'images'));
});

/**
 * Watch
 */
gulp.task('watch', function() {
    gulp.watch('./src/scss/**/*.scss', ['css']);
    gulp.watch(['./src/js/**/*.js'], ['javascript']);
    gulp.watch('./src/images/**/*.*', ['images']);
    //gulp.watch('./src/templates/**/*.hbs', ['templates']);
});

/**
 * Build For Development
 */
gulp.task('development', function(cb) {
    runSequence(tasks, cb);
});

/**
 * Build For Production
 */
gulp.task('development', function(cb) {
    production = true;
    runSequence(tasks, cb);
});

//
gulp.task('default', ['development']);
gulp.task('production', ['production']);