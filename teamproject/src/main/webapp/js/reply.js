/**
 * 
 */
class Reply {
	showInfo(){
		
	}
	replyList(spaceName,callback,errorcall){
		fetch('AjaxReplyList.do?sname='+spaceName)
			.then((resolve) => resolve.json())
			.then(result => callback(result))
			.catch(err => errorcall(err));
	}
	displayDate(millis) {
		// 2023-09-05 13:22:11
		let today = new Date(millis);
		let yyyy = today.getFullYear(); // 2023
		let mm = ('0' + (today.getMonth() + 1)).slice(-2); // 09
		let dd = ('0' + today.getDate()).slice(-2);
		let hh = ('0' + today.getHours()).slice(-2);
		let mi = ('0' + today.getMinutes()).slice(-2);
		let ss = ('0' + today.getSeconds()).slice(-2);

		return yyyy + "-" + mm + "-" + dd + " " + hh + ":" + mi + ":" + ss;
	}
}