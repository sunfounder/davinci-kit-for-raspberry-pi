const Gpio = require('pigpio').Gpio; 

var rowsPins = [18,23,24,25];
var colsPins = [10,6,27,17];
var keys = ["1","2","3","A",
        "4","5","6","B",
        "7","8","9","C",
        "*","0","#","D"];      

for(let i=0;i<rowsPins.length;i++){
    rowsPins[i] = new Gpio(rowsPins[i],{mode: Gpio.OUTPUT})
}
for(let i=0;i<colsPins.length;i++){
    colsPins[i] = new Gpio(colsPins[i],{
        mode: Gpio.INPUT,
        pullUpDown: Gpio.PUD_DOWN,
        edge: Gpio.RISING_EDGE
    })
}

var last_key_pressed = 0;

var col=-1;
for(let i=0;i<colsPins.length;i++){
    colsPins[i].on('interrupt',()=>{
        col=i;
        pressed_keys=keys[row*colsPins.length+col];
        if(last_key_pressed!=pressed_keys){
            console.log(`${pressed_keys}`);
        }
        last_key_pressed = pressed_keys;
    });
}

var row=-1;
setInterval(() => {
    row=(row+1)%rowsPins.length;
    for(let i=0;i<rowsPins.length;i++){
        rowsPins[i].digitalWrite(0);
    }
    rowsPins[row].digitalWrite(1);
}, 10);
