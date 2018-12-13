////////////////////////////////////////////
// Import neccesary modules
import del from 'del'
import gulp from 'gulp'
import pug from 'gulp-pug'
import sass from 'gulp-sass'
import gutil from 'gulp-util'
import concat from 'gulp-concat'
import rename from 'gulp-rename'
import imagemin from 'gulp-imagemin'
import cssnano from 'gulp-cssnano'
import uglifyes from 'gulp-uglify-es'
import prefix from 'gulp-autoprefixer'
import sourcemaps from 'gulp-sourcemaps'
import browserSync from 'browser-sync'
import tsify from 'tsify'
import buffer from 'vinyl-buffer'
import source from 'vinyl-source-stream'
import watchify from 'watchify'
import browserify from 'browserify'
import fs from 'fs';
// END HERE
////////////////////////////////////////////


////////////////////////////////////////////
// Remove folder dist before run others tasks
const clean = () => del('./dist')
const clean_images = () => del('./dist/img')
// END HERE
////////////////////////////////////////////


////////////////////////////////////////////
// Copy images from source to dist
export function copy_images() {
	return gulp.src('./src/img/**.{gif,png,jpg,jpeg,svg}')
		.pipe(gulp.dest('./dist/img'))
}
// END HERE
////////////////////////////////////////////


////////////////////////////////////////////
// compress images
export function compress_images() {
	return gulp.src('./src/img/**.{gif,png,jpg,jpeg,svg}')
		.pipe(imagemin([
			imagemin.gifsicle({ interlaced: true }),
			imagemin.jpegtran({ progressive: true }),
			imagemin.optipng({ optimizationLevel: 5 }),
		]))
		.pipe(gulp.dest('./dist/img'))
}
// END HERE
////////////////////////////////////////////


////////////////////////////////////////////
// Copy fonts from source to dist
export function copy_fonts1() {
	return gulp.src('./fonts/**')
		.pipe(gulp.dest('./dist/fonts'))
}
export function copy_fonts2() {
	return gulp.src('./webfonts/**')
		.pipe(gulp.dest('./dist/webfonts'))
}
// END HERE
////////////////////////////////////////////


////////////////////////////////////////////
// Concat css to dist/styles
export function concatenate_css() {
	let plugins = JSON.parse(fs.readFileSync('./plugins.json'));
	return gulp.src(plugins.styles)
		.pipe(concat('core.min.css'))
		.pipe(cssnano())
		.pipe(gulp.dest('./dist/css'))
}
// END HERE
////////////////////////////////////////////


////////////////////////////////////////////
export function concatenate_script() {
	let plugins = JSON.parse(fs.readFileSync('./plugins.json'));
	return gulp.src(plugins.scripts)
		.pipe(concat('core.min.js'))
		.pipe(uglifyes())
		.pipe(gulp.dest('./dist/js'))
}
// END HERE
////////////////////////////////////////////


////////////////////////////////////////////
// Define WatchedBrowserify
let watchedBrowserify = watchify(browserify({
	basedir: '.',
	debug: true,
	entries: ['./src/scripts/main.ts'],
	cache: {},
	packageCache: {}
}).plugin(tsify)).transform('babelify', {
	global: true,
	extensions: ['.ts'],
});

// Browserify
export function ts() {
	return watchedBrowserify
		.bundle()
		.pipe(source('main.min.js'))
		.pipe(buffer())
		.pipe(sourcemaps.init({
			loadMaps: true
		}))
		// .pipe(uglifyes())
		.on('error', function (err) { console.log('Error: ' + err.message); })
		.pipe(sourcemaps.write('./'))
		.pipe(gulp.dest('./dist/js'))
}


export function ts_build() {
	return watchedBrowserify
		.bundle()
		.pipe(source('main.min.js'))
		.pipe(buffer())
		.pipe(sourcemaps.init({
			loadMaps: true
		}))
		.pipe(uglifyes())
		.on('error', function (err) { console.log('Error: ' + err.message); })
		.pipe(sourcemaps.write('./'))
		.pipe(gulp.dest('./dist/js'))
}
// END HERE
////////////////////////////////////////////


////////////////////////////////////////////
// Convert Pug to html and copy to dist
export function html() {
	return gulp.src([
		'./src/**/*.pug',
		'!./src/{**/\_*,**/\_*/**}.pug'
	])
		.pipe(pug({
			pretty: '\t',
		}))
		.pipe(gulp.dest('./dist'))
}
// END HERE
////////////////////////////////////////////


////////////////////////////////////////////
// Convert Sass to css and copy to dist
export function css() {
	return gulp.src([
		'./src/styles/main.sass',
		'!./src/styles/\_*.sass'
	])
		.pipe(sourcemaps.init())
		.pipe(sass().on('error', sass.logError))
		.pipe(prefix({
			browsers: ['last 4 versions'],
			cascade: false
		}))
		.pipe(rename({
			suffix: '.min'
		}))
		.pipe(sourcemaps.write('.'))
		.pipe(gulp.dest('./dist/css'))
}

export function css_build() {
	return gulp.src([
		'./src/styles/main.sass',
		'!./src/styles/\_*.sass'
	])
		.pipe(sourcemaps.init())
		.pipe(sass().on('error', sass.logError))
		.pipe(prefix({
			browsers: ['last 4 versions'],
			cascade: false
		}))
		.pipe(cssnano())
		.pipe(rename({
			suffix: '.min'
		}))
		.pipe(sourcemaps.write('.'))
		.pipe(gulp.dest('./dist/css'))
}
// END HERE
////////////////////////////////////////////


////////////////////////////////////////////
// Create a local server and watch to reload if source has any changes
export function watchDist() {
	browserSync.init({
		server: {
			baseDir: './dist'
		},
		port: 9999,
	})
	gulp.watch('./src/img', gulp.series(clean_images, copy_images))
	gulp.watch('./plugins.json', gulp.parallel(concatenate_css, concatenate_script))
	gulp.watch('./plugins/*.js', concatenate_script)
	gulp.watch('./plugins/*.css', concatenate_css)
	gulp.watch(['./src/styles/*.sass', './lib/**/*.sass'], css)
	gulp.watch(['./src/**/*.pug', './lib/**/*.pug'], html)
	gulp.watch('./dist').on('change', browserSync.reload)
}
watchedBrowserify.on('update', ts);
watchedBrowserify.on('log', gutil.log)
// END HERE
////////////////////////////////////////////


////////////////////////////////////////////
// Default task when run Gulp
const dev = gulp.series(
	clean,
	copy_fonts1,
	copy_fonts2,
	copy_images,
	concatenate_css,
	concatenate_script,
	ts,
	css,
	html,
	watchDist,
)


const build = gulp.series(
	clean,
	copy_fonts1,
	copy_fonts2,
	copy_images,
	concatenate_css,
	concatenate_script,
	ts_build,
	css_build,
	html,
)

const minify = gulp.series(
	clean_images,
	compress_images,
)
// END HERE
////////////////////////////////////////////

export {
	dev,
	build,
	minify
}
export default dev;