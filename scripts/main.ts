import { Header } from '../views/lib/header/index';


let header = new Header();

$(document).ready(function () {
	header.moveUser();
	header.moveSearch();
});