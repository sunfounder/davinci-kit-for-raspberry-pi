var Max7219 = require('node-max7219');

var options = {
	device: 'matrix',
	cascaded: 4,
	vertical: true
};

// var options = {
// 	device: 'sevensegment',
// 	cascaded: 2,
// 	vertical: false
// };

var max7219 = Max7219(options);

/**
 * fast teset
 */
// max7219.drawText('The repl module exports the repl.REPLServer class. While running, instances of repl.REPLServer');
// max7219.drawText('The');


/**
 * run through cli
 */
// const repl = require('repl');

// repl.inject = function(injectedObj){
// 	var r = repl.start('>');
// 	Object.keys(injectedObj).forEach(function(key){
// 		r.context[key] = injectedObj[key];
// 	});
	
// };

// repl.inject({
// 	max7219: max7219
// });

/**
 * TEST NEW FEATURE OF NODE-MAX7219 v2
 */
/**
 * old feauture should work
 */
// max7219.drawText('message');
// max7219.showMessage({
// 	text: 'message',
// 	scroll: 'up'
// });

// max7219.on('close', function(){
// 	console.log('event: close');
// });

// max7219.on('exit', function(){
// 	console.log('event: exit');
// });

// max7219.on('finished', function(){
// 	console.log('event: finished (same as close|exit)');
// });

/**
 * test setOptions
 * @type {[type]}
 */
// max7219.setOptions({
// 	brightness: 255
// });


// max7219.showMessage({
// 	text: 'message'
// });

/**
 * test showMessage letter with single argument
 * argument is NOT an object
 */
// max7219.setOptions({
// 	brightness: 15
// });
// max7219.showMessage('message');

/* test letter */
// max7219.letter({
// 	letter: 'X'
// });
// max7219.letter('message');

/* test writeText */
// max7219.writeText('message');
// max7219.writeText({
// 	text: 'message',
// 	orientation: 90,
// 	invert: 1
// });

/**
 * test on debug info|error
 */
max7219.setOptions({
	device: 'abc'
});

max7219.showMessage('message');