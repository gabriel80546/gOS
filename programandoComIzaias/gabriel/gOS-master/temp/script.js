function findKeyAddress() {
	var key = document.querySelector('#key').value;
	var memoryIndex;
	var p;
	var memory = document.querySelector('pre').innerHTML;
	var temp;
	for(memoryIndex = 0; memoryIndex < 24; memoryIndex++) {
		p = 0;
		temp = memoryIndex;
		while((p<16) && memory.charAt(temp) == key.charAt(p)) {
			temp++;
			p++;
		}
		if(p==16) {
			alert('key encontrada na pos.' + memoryIndex);
		}
	}
	
}
