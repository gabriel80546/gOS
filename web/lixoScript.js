function sty() {
	var spans = document.querySelectorAll("span[style='background-color:#303030'");


	for (var i = 0; i < spans.length; i++) {
		spans[i].style.backgroundColor = 'transparent';
	}


	var spans = document.querySelectorAll("font[color='#EEEEEC'");

	for (var i = 0; i < spans.length; i++) {
		spans[i].setAttribute('color','black');
	}

	var spans = document.querySelectorAll("font[color='#555753'");

	for (var i = 0; i < spans.length; i++) {
		spans[i].setAttribute('color','grey');
	}
}
