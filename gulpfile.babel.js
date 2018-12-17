'use strict';

// import plugins
import gulp from 'gulp';
import HubRegistry from 'gulp-hub';
import browserSync from 'browser-sync';
// load tasks from folder tasks
let hub = new HubRegistry(['./_tasks/*.js']);

// tell gulp to use the tasks just loaded
gulp.registry(hub);



gulp.task('serve', function () {
	browserSync.init({
		server: {
			baseDir: './dist'
		},
		port: 8000,
	})
	// global.watch = true;
	gulp.watch('./views/**/*.pug', gulp.series('html', 'inject')).on('all', (filepath) => {
		global.emittyChangedFile = filepath;
	});
	gulp.watch('./views/lib/**/*.sass', gulp.series('css_dev')).on('all', (filepath) => {
		global.emittyChangedFile = filepath;
	});
	gulp.watch(['./scripts/main.ts', './views/lib/**/*.ts'], gulp.series('script_dev'))
	gulp.watch('./img/**/*', gulp.series('clean_img', 'copy_img'))
	gulp.watch('./plugins.json', gulp.parallel('concat_css', 'concat_js'))
	gulp.watch('./_plugins/*.js', gulp.series('concat_js'))
	gulp.watch('./_plugins/*.css', gulp.series('concat_css'))
	gulp.watch('./dist').on('change', browserSync.reload)
})



// define composite tasks
gulp.task('default',
	gulp.series(
		'clean',
		'copy_fonts_1',
		'copy_fonts_2',
		'copy_img',
		'concat_js',
		'concat_css',
		'script_dev',
		'css_dev',
		'html',
		'inject',
		'serve',
	)
);

gulp.task('build',
	gulp.series(
		'clean',
		'copy_fonts_1',
		'copy_fonts_2',
		'copy_img',
		'concat_js',
		'concat_css',
		'script_build',
		'css_build',
		'html',
		'inject'
	)
);


gulp.task('watch',
	gulp.series(
		'serve',
	)
);