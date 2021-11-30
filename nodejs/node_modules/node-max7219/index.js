var util = require('util');

var info = require('debug')('info');

var error = require('debug')('error');

var psTree = require('ps-tree');

var kill = function(pid, signal, callback){
	signal = signal || 'SIGKILL';
	callback = callback || function(){
		};
	var killTree = true;
	if(killTree){
		psTree(pid, function(err, children){
			[pid].concat(
				children.map(function(p){
					return p.PID;
				})
			).forEach(function(tpid){
				try{
					process.kill(tpid, signal)
				}
				catch(ex){
				}
			});
			callback();
		});
	}else{
		try{
			process.kill(pid, signal)
		}
		catch(ex){
		}
		callback();
	}
};

/**
 * base on rm-hull/max7219
 *
 * below is what matrix|sevensegment can do
 */

const devices = ['sevensegment', 'matrix'];

const commonOption = {
	device: 'sevensegment',
	cascaded: 2,
	vertical: false,
	options: {
		device: 'sevensegment',
		cascaded: 2,
		vertical: false
	},
	methods: {
		clear: {
			deviceId: null
		},
		flush: {},
		brightnessX: 7,
		brightness: {
			intensity: 7
		},
		set_byte: {
			deviceId: 0,
			position: 1,
			value: 1,
			redraw: true
		},
		rotate_left: {
			redrawn: true
		},
		rotate_right: {
			redrawn: true
		},
		scroll_left: {
			redrawn: true
		},
		scroll_right: {
			redrawn: true
		}
	}
};

const deviceMethod = {
	sevensegment: {
		letter: {
			deviceId: 0,
			position: 1,
			char: 'a',
			dot: false,
			redrawn: true
		},
		write_number: {
			deviceId: 0,
			value: 1,
			base: 10,
			decimalPlaces: 0,
			zeroPad: false,
			leftJustify: false
		},
		write_text: {
			deviceId: 0,
			text: 'a'
		},
		show_message: {
			text: 'a',
			delay: 0.4
		}
	},
	matrix: {
		letter: {
			deviceId: 0,
			letter: 'A',
			orientation: 0,
			invert: 0
		},
		show_message: {
			text: 'hello world',
			font: 'DEFAULT_FONT',
			invert: 0
		},
		write_text: {
			text: 'hello world',
			orientation: 0,
			invert: 0
		},
		move_right: {
			text: 'hello world',
			font: 'DEFAULT_FONT',
			invert: 0
		}
	}
};

var max7219 = function(options){
	var max7219 = this;

	var xyz = Object.assign({}, commonOption);

	options = options ? options : {};

	var setOptions = function(opt){
		(opt.brightness > 16 || opt.brightness < 0) ? function(){
			error(util.format('brightness should in-range 0-15, current: %s'), opt.brightness);
			info('set brightness to default 7');
			opt.brightness = 7;
		}() : false;
		Object.assign(xyz.options, opt);
		//support old version by call opt on xyz
		Object.assign(xyz, opt);
		// info(xyz);
		//only accept option base on device
		var device = xyz.options.device;
		devices.includes(device) ? false : function(){
			error(util.format('%s, not support, only allow: %s', device, devices));
			error(util.format('use default: %s', devices[0]));
			xyz.options.device = 'sevensegment';
		}();

		Object.assign(xyz.methods, deviceMethod[device]);
	};

	var init = function(){
		setOptions(options);
	};

	init();

	var p;

	var stopF = function(){
		!p ? false : function(){
			kill(p.pid);
		}();
	};

	var exec = require('child_process').exec;
	
	// var drawText = function(message){
	// 	stopF();
	// 	xyz.message = message;
	// 	var cmd = util.format('python %s/bin/drawText.py', __dirname);
	// 	Object.keys(xyz).forEach(function(key){
	// 		var format = ' --%s %s';
	// 		var val = xyz[key];

	// 		key == 'message' ? val = '\"' + val + '\"' : false;

	// 		key == 'vertical' ?
	// 			function(){
	// 				val == true ? (val = 'True') : function(){
	// 					key =''; val = ''; format = '%s%s'
	// 				}();
	// 			}() : false;

	// 		key == 'options' ? function(){
	// 			format = '%s%s';
	// 			key = '';
	// 			val = '';
	// 		}() : false;

	// 		key == 'methods' ? function(){
	// 			format = '%s%s';
	// 			key = '';
	// 			val = '';
	// 		}() : false;

	// 		key == 'run' ? function(){
	// 			format = '%s%s';
	// 			key = '';
	// 			val = '';
	// 		}() : false;

	// 		cmd += util.format(format, key, val);
	// 	});

	// 	info(cmd);

	// 	p = exec(cmd);
	// };
	
	var drawText = function(message){
		max7219.showMessage({
			text: message
		});
	};

	var mapNodePy = {
		clear: 'clear',
		flush: 'flush',
		setByte: 'setByte',
		rotateLeft: 'rotate_left',
		rotateRight: 'rotate_right',
		scrollLeft: 'scroll_left',
		scrollRight: 'scroll_right',
		letter: 'letter',
		writeNumber: 'write_number',
		writeText: 'write_text',
		showMessage: 'show_message',
		scrollUp: 'scroll_up',
		scrollDown: 'scroll_down',
		pixel: 'pixel',
		invert: 'invert',
		orientation: 'orientation',
		moveRight: 'move_right'
	};

	var buildCmd = function(){
		var cmd = util.format('python %s/bin/index.py', __dirname);

		//for options to create DEVICE
		// info(xyz);
		Object.keys(xyz.options).forEach(function(key){
			var format = ' --%s %s';
			var val = xyz.options[key];

			key == 'vertical' ?
				function(){
					val == true ? (val = 'True') : function(){
						key =''; val = ''; format = '%s%s'
					}();
				}() : false;

			cmd += util.format(format, key, val);
		});

		//for run command
		var runCmd = xyz.run;
		cmd += util.format(' --method %s', runCmd);
		Object.keys(xyz.methods[runCmd]).forEach(function(key){
			var val = xyz.methods[runCmd][key];

			val = '\"' + val + '\"';

			cmd += util.format(' %s', val);
		});

		info(cmd);

		return cmd;
	};

	Object.keys(mapNodePy).forEach(function(node){
		max7219[node] = function(options){
			//sanity for options as text-message to display
			options = options || {};
			info(util.format('method: \033[01;32m%s\033[0m, options: \033[01;32mG%s\033[0m', node, options));

			(typeof options == 'string') ? (function(){
				var tmp = options;
				options = {};
				node != 'letter' ? options.text = tmp : options.letter = tmp;
			})() : false;

			//acturally run
			stopF();
			var py = mapNodePy[node];
			// xyz.methods[py] = options;
			Object.assign(xyz.methods[py], options);
			xyz.run = py;

			// buildCmd();
			p = exec(buildCmd(), function(err, stdout, stderr){
				error('stdout: ', stdout);
				error('stderr: ', stderr);
			});
		};
	});

	max7219.on = function(status, callback){
		var supported = ['close', 'exit', 'finished'];

		if(supported.indexOf(status) < 0){
			error(util.format('On <%s>: Event not supported', status));
			return;
		}

		p ? function(){
			p.on('exit', function(){
				info(util.format('On <%s>: '), status);
				callback();
			});
		}() : 
		function(){
			// console.log('current, no event to listen on');
		}();
	};

	max7219.drawText = drawText;
	max7219.setOptions = setOptions;
	max7219.setOptions = setOptions;
	max7219.getOptions = function(){
		return xyz;
	};
	return max7219;
};

// process.env.DEBUG = 'info';
//
// var a = max7219({
// 	device: 'matrix',
// 	cascaded: 4,
// 	vertical: true,
// 	brightness: 15
// });
// // console.log(a);
// a.showMessage({
// 	text: 'hoanganh',
// 	scroll: 'up'
// });

module.exports = max7219;