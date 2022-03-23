var sensor = require("node-dht-sensor");

setInterval(function(){ 
  sensor.read(11, 17, function(err, temperature, humidity) {
    if (!err) {
      console.log(`temp: ${temperature}\`C, humidity: ${humidity}%`);
    }
  });
},1000);