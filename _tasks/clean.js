//======================================//
// Import plugins
import gulp from "gulp";
import del from "del";



//======================================//
// Define Task
//// Task xóa thư mục dist
function clean() {
	return del(['./dist']);
}
//// Task xóa thư mục img trong thư mục dist
function clean_img() {
	return del(['./dist/img']);
}
//======================================//

gulp.task(clean)
gulp.task(clean_img)