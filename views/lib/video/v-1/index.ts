export class videoImages {
	videoPopup (){
		(<any>$('.canhcam-video-1 .video-list .item .boxvideo')).lightGallery({
			youtubePlayerParams: {
				modestbranding: 1,
				showinfo: 0,
				rel: 0,
				controls: 1
			}
		})
	}
}