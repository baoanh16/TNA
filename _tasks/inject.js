//======================================//
// Import plugins
import gulp from "gulp";
import ij from "gulp-inject";



//======================================//
// Define Task
function inject() {
	let source = gulp.src(['./dist/js/*.js', './dist/css/*.css'], { read: false })
	// It's not necessary to read the files (will speed up things), we're only after their paths:
	return gulp.src('./dist/*.html')
		.pipe(ij(source, { relative: true }))
		.pipe(gulp.dest('./dist'));
};
//======================================//

gulp.task(inject)