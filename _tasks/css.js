//======================================//
// Import plugins
import gulp from "gulp";
import gulpif from 'gulp-if';
import sass from 'gulp-sass';
import rename from 'gulp-rename';
import cssnano from 'gulp-cssnano';
import prefix from 'gulp-autoprefixer';
import sourcemaps from 'gulp-sourcemaps';


gulp.task('css_build', () => {
	return gulp.src([
		'./views/lib/*.sass',
		'!./views/lib/\_*.sass'
	])
		.pipe(sass().on('error', sass.logError))
		.pipe(prefix({
			browsers: ['last 4 versions'],
			cascade: false
		}))
		.pipe(cssnano())
		.pipe(rename({
			suffix: '.min'
		}))
		.pipe(gulp.dest('./dist/css'))
});

gulp.task('css_dev', () => {
	return new Promise((resolve, reject) => {
		let emitty = require('emitty').setup('./views', 'sass');
		emitty.scan(global.emittyChangedFile)
			.then(() => {
				gulp.src([
					'./views/lib/*.sass',
					'!./views/lib/\_*.sass'
				])
					.pipe(gulpif(global.watch, emitty.filter(global.emittyChangedFile)))
					.pipe(sourcemaps.init())
					.pipe(sass().on('error', sass.logError))
					.pipe(prefix({
						browsers: ['last 4 versions'],
						cascade: false
					}))
					.pipe(sourcemaps.write('.'))
					.pipe(gulp.dest('./dist/css'))
					.on('end', resolve)
					.on('error', reject);
			})
	})
});