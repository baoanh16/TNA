import gulp from 'gulp';
import gulpif from 'gulp-if';
import pug from 'gulp-pug';



gulp.task('html', () => {
	return gulp.src('./views/templates/*.pug')
		.pipe(pug({
			pretty: '\t'
			// verbose: 'true'
		}))
		.pipe(gulp.dest('./dist'))
});