const Gpio = require('pigpio').Gpio;
const led = new Gpio(17,{mode: Gpio.OUTPUT});

var pins = [17,18,27,22,23,24,25,2,3,8];

function delay(ms){
    var start = new Date().getTime();	
    while(true){
        if(new Date().getTime() - start > ms){
            break;		
	    }	  
    }
}

function oddLedBarGraph(){
    for(let i=0; i<5; i++){
        let j = i*2;
        new Gpio(pins[j], {mode: Gpio.OUTPUT}).digitalWrite(1);
        delay(300);
        new Gpio(pins[j], {mode: Gpio.OUTPUT}).digitalWrite(0);
        delay(300);  
    }
}

function evenLedBarGraph(){
    for(let i=0; i<5; i++){
        let j = i*2+1;
        new Gpio(pins[j], {mode: Gpio.OUTPUT}).digitalWrite(1);
        delay(300);
        new Gpio(pins[j], {mode: Gpio.OUTPUT}).digitalWrite(0);
        delay(300);  
    }
}

function allLedBarGraph(){
    for(let i=0; i<10; i++){
        new Gpio(pins[i], {mode: Gpio.OUTPUT}).digitalWrite(1);
        delay(300);
        new Gpio(pins[i], {mode: Gpio.OUTPUT}).digitalWrite(0);
        delay(300);  
    }
}

setInterval(() => {
    oddLedBarGraph();
    delay(300);
    evenLedBarGraph();
    delay(300);
    allLedBarGraph();
    delay(300);
},300);