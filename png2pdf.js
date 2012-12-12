var webpage = require('webpage'),
		page = webpage.create(),
		fs = require('fs');

page.open('temp-output.html', function(status) {
	page.viewportSize = {
		width: 1920,
		height: 1044
	};
	page.paperSize = {
		width: 1920,
		height: 1044
	};
	page.render('output.pdf');

	fs.removeTree('temp-slides');
	fs.remove('temp-output.html');
	phantom.exit();
});
