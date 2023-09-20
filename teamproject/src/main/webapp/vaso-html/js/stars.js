/**
 * 
 */
let ratingStars=function(star){
	$('.myrate').remove();
	for(let i=0;i<star;i++){
		let fillstars=($('<div/>').attr('class','myrate').append('★'));
		$('#yourRating').append(fillstars);
	}
	for(let i=0; i<5-star;i++){
		let emptystars=($('<div/>').attr('class','myrate').append('☆'));
		$('#yourRating').append(emptystars);
	}
}