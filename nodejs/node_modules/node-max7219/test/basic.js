process.env.DEBUG = 'info';
var Max7219 = require('../index.js');

// var max7219 = Max7219();

// console.log(max7219.getOptions());

// max7219.drawText();

var max7219 = Max7219({
	device: 'matrix',
	cascaded: 4,
	vertical: false,
	brightness: 7
});

// max7219.showMessage({
// 	text: 'hoanganh',
// 	scroll: 'up'
// });

// max7219.writeText({
// 	text: 'hoanganh',
// 	orientation: 180,
// 	invert: 1
// });

// max7219.letter({
// 	deviceId: 1,
// 	letter: 'A',
// 	invert: 1
// });
// console.log(max7219.getOptions());
max7219.drawText('hoanganh');