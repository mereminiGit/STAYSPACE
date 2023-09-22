class reply{
	replyList(spaceName, callback, errorcall){
		fetch('AjaxReplyList.do?sname=' + spaceName) // fetch가 전해주는게 promise객체 promise: 처리중, 완료, 실패 세가지 상태를 가짐
			.then((resolve) => resolve.json()) // 정상적으로 값가져오면 then값 실행 , => 화살표함수 resolve.json()문자 -> 객체  
			.then(result => callback(result))
			.catch(err => errorcall(err));
	}
}