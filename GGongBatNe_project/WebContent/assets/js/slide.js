window.onload = function() {
	const sliderWrap = document.querySelector('#slide_wrap');
	const slideGroup = document.querySelector('#slideGroup');
	const lastItem = slideGroup.lastElementChild;
	const firstItem = slideGroup.firstElementChild;
	let current = 1;
	let prev;
	let next;
	let clonedFirst = firstItem.cloneNode(true);
	let clonedLast = lastItem.cloneNode(true);

	//첫번째전에 추가하기
	slideGroup.insertBefore(clonedLast, slideGroup.firstElementChild);
	//마지막에 추가하기
	slideGroup.appendChild(clonedFirst);
	const slideItems = document.querySelectorAll('.slideItem');

	//스타일 작성하기
	//이미지를 감싸는 div의 크기를 이미지갯수 * 100%로 변경
	slideGroup.style.width = (slideItems.length) * 100 + '%';
	slideGroup.style.left = -(current * 100) + '%';
	//슬라이드 이미지의 크기를 100/이미지갯수 %로 변경
	for (let i = 0; i < slideItems.length; i++) {
		slideItems[i].style.width = (100 / slideItems.length) + '%';
		slideItems[i].style.left = (i * (100 / slideItems.length)) + '%';
	}

	function slideMove(itemNum) {

		slideGroup.style.transition = 0.5 + 's';
		slideGroup.style.left = -(itemNum * 100) + '%';
		current = itemNum;
		console.log(current);
		if (itemNum == 2) {
			firstCurrent();
		}
	}
	let timer;
	function startIt() {
		if (timer) stopIt()
		timer = setInterval(function() {
			slideMove(current + 1);
			console.log('진행중');
		}, 2500);


	}
	startIt()
	function firstCurrent() {
		setTimeout(function() {
			slideGroup.style.transition = "0ms";
			slideGroup.style.left = -(0 * 100) + '%';
			current = 0;
		}, 500);
	}
}
