// import { Header } from '../views/lib/header/index';
import { MenuNews } from '../views/lib/nav/n-1/index';


// let header = new Header();
let menunews = new MenuNews();

$(document).ready(function () {
	// header.moveUser();
	// header.moveSearch();
	menunews.toggleNews();
});