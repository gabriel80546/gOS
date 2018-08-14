







function findKeyAddress() {
	var key = document.querySelector('#key').value;
	var ecx_memoryIndex;
	var ebx_p;
	var memory = document.querySelector('pre').innerHTML;
	var edx_temp;
	for(ecx_memoryIndex = 0; ecx_memoryIndex < 24; ecx_memoryIndex++) {
		ebx_p = 0;
		edx_temp = ecx_memoryIndex;
		while((ebx_p<16) && memory.charAt(edx_temp) == key.charAt(ebx_p)) {
			edx_temp++;
			ebx_p++;
		}
		if(ebx_p==16) {
			alert('key encontrada na pos.' + ecx_memoryIndex);
		}
	}
}









