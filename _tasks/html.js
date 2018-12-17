import gulp from 'gulp';
import gulpif from 'gulp-if';
import pug from 'gulp-pug';



gulp.task('html', () => {
	return new Promise((resolve, reject) => {
		let emitty = require('emitty').setup('./views', 'pug');
		emitty.scan(global.emittyChangedFile)
			.then(() => {
				gulp.src('./views/templates/*.pug')
					.pipe(gulpif(global.watch, emitty.filter(global.emittyChangedFile)))
					.pipe(pug({ pretty: '\t' }))
					.pipe(gulp.dest('./dist'))
					.on('end', resolve)
					.on('error', reject);
			})
	})
});