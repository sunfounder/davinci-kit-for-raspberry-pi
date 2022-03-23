const Gpio = require('pigpio').Gpio; //模块pigpio提供了一个对象pigpio.Gpio,用来控制gpio引脚,其内部继承了EventEmitter类用于事件触发与监听

//创建led对象，控制gpio17并设置其为输出模式
const led = new Gpio(17, {mode: Gpio.OUTPUT});
//创建button对象，控制gpio18,并设置为输入模式
const button = new Gpio(18, {
  mode: Gpio.INPUT,
  pullUpDown: Gpio.PUD_DOWN,     //激活gpio18引脚上的下拉电阻
  edge: Gpio.EITHER_EDGE        //设定上升沿和下降沿都会触发中断函数
});

//库里设定了每当触发中断函数，都会调用一次EventEmitter类的emit('interrupt')，从而调用监听器，所以这里只需要注册中断事件'interrupt'并绑定监听器即可
button.on('interrupt', (level) => {  //button对象注册事件'interrupt'，箭头函数用作监听器，事件触发时调用监听器
  led.digitalWrite(level);          //level是当前button的gpio电平，将其写入led的gpio里
});
