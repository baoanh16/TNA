//======================================//
// Import plugins
import gulp from 'gulp';
import tsify from 'tsify'
import buffer from 'vinyl-buffer'
import source from 'vinyl-source-stream'
import uglifyes from 'gulp-uglify-es'
import watchify from 'watchify'
import browserify from 'browserify'
import sourcemaps from 'gulp-sourcemaps';



gulp.task('script_dev', () => {
	return watchify(browserify({
		basedir: '.',
		debug: true,
		entries: ['./scripts/main.ts'],
		cache: {},
		packageCache: {}
	})
		.plugin(tsify))
		.transform('babelify', {
			global: true,
			presets: ['@babel/env'],
			extensions: ['.js', '.ts'],
		})
		.bundle()
		.pipe(source('main.js'))
		.pipe(buffer())
		.on('error', function (err) { console.log('Error: ' + err.message); })
		.pipe(sourcemaps.init({
			loadMaps: true
		}))
		.pipe(sourcemaps.write('./'))
		.pipe(gulp.dest('./dist/js'))
})


gulp.task('script_build', () => {
	return watchify(browserify({
		basedir: '.',
		debug: true,
		entries: ['./scripts/main.ts'],
		cache: {},
		packageCache: {}
	})
		.plugin(tsify))
		.transform('babelify', {
			global: true,
			presets: ['@babel/env'],
			extensions: ['.js', '.ts'],
		})
		.bundle()
		.pipe(source('main.min.js'))
		.pipe(buffer())
		.on('error', function (err) { console.log('Error: ' + err.message); })
		.pipe(uglifyes())
		.pipe(gulp.dest('./dist/js'))
})