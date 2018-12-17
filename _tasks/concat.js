//======================================//
// Import plugins
import fs from 'graceful-fs';
import gulp from 'gulp'
import concat from 'gulp-concat'
import cssnano from 'gulp-cssnano'
import uglifyes from 'gulp-uglify-es'



//======================================//
// Define Task
//// Task nối file css
function concat_css(cb) {
	let plugins = JSON.parse(fs.readFileSync('./plugins.json'));
	if (plugins.styles != []) {
		return gulp.src(plugins.styles)
			.pipe(concat('core.min.css'))
			.pipe(cssnano())
			.pipe(gulp.dest('./dist/css'))
	} else {
		cb()
	}
}
//// Task nối file js
export function concat_js(cb) {
	let plugins = JSON.parse(fs.readFileSync('./plugins.json'));
	if (plugins.scripts != []) {
		return gulp.src(plugins.scripts)
			.pipe(concat('core.min.js'))
			.pipe(uglifyes())
			.pipe(gulp.dest('./dist/js'))
	} else {
		cb()
	}
}

//======================================//
gulp.task(concat_css)
gulp.task(concat_js)