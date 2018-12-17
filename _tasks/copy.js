//======================================//
// Import plugins
import gulp from "gulp";



//======================================//
// Define Task
//// Task copy hình ảnh
function copy_img() {
	return gulp.src('./img/**/*.{png,jpg,jpeg,svg,gif}')
		.pipe(gulp.dest('./dist/img'))
}
//// Task copy thư mục fonts
function copy_fonts_1() {
	return gulp.src('./fonts/*.**')
		.pipe(gulp.dest('./dist/fonts'))
		.pipe(gulp.dest('./dist/css/fonts'))
}
//// Task copy thư mục webfonts
function copy_fonts_2() {
	return gulp.src('./webfonts/*.**')
		.pipe(gulp.dest('./dist/webfonts'))
}
//======================================//

gulp.task(copy_img)
gulp.task(copy_fonts_1)
gulp.task(copy_fonts_2)