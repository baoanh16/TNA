import gulp from "gulp";
import del from "del";


gulp.task('clean', () => {
	return del(['./dist']);
})
gulp.task('clean_img', () => {
	return del(['./dist/img']);
})