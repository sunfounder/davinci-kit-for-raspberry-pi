const Gpio = require('pigpio').Gpio;

class ADC0834 {
  constructor(cs, clk, dio) {
    this.cs = new Gpio(cs, { mode: Gpio.OUTPUT });
    this.clk = new Gpio(clk, { mode: Gpio.OUTPUT });
    this.dio = new Gpio(dio, { mode: Gpio.INPUT });
    this.logicDelay = 0.002;
    this.cs.digitalWrite(1);
  }

  delay (ms){
    return new Promise((resolve, reject) => {setTimeout(resolve, ms)});
  }

  async read(channel) {
      
    var sel = parseInt(channel > 1 & 1);
    var odd = channel & 1;
    this.dio.mode(Gpio.OUTPUT);
    this.cs.digitalWrite(0);

    // Start bit
    this.clk.digitalWrite(0);
    this.dio.digitalWrite(1);
    await this.delay(this.logicDelay);
    //this.delay(2);
    this.clk.digitalWrite(1);
    await this.delay(this.logicDelay);
    //this.delay(2);

    // Single End mode
    this.clk.digitalWrite(0);
    this.dio.digitalWrite(1);
    await this.delay(this.logicDelay);
    //this.delay(2);
    this.clk.digitalWrite(1);
    await this.delay(this.logicDelay);
    //this.delay(2);

    // ODD
    this.clk.digitalWrite(0);
    this.dio.digitalWrite(odd);
    await this.delay(this.logicDelay);
    //this.delay(2);
    this.clk.digitalWrite(1);
    await this.delay(this.logicDelay);
    //this.delay(2);

    // Select
    this.clk.digitalWrite(0);
    this.dio.digitalWrite(sel);
    await this.delay(this.logicDelay);
    //this.delay(2);
    this.clk.digitalWrite(1);
    await this.delay(this.logicDelay);
    //this.delay(2);

    this.dio.digitalWrite(1);
    await this.delay(this.logicDelay);
    //this.delay(2);
    this.clk.digitalWrite(0);
    this.dio.digitalWrite(1);
    await this.delay(this.logicDelay);
    //this.delay(2);

    // Read data
    this.dio.mode(Gpio.INPUT);
    var dat1 = 0;
    for (var i = 0; i < 8; i++) {
      this.clk.digitalWrite(1);
      await this.delay(this.logicDelay);
      //this.delay(2);
      this.clk.digitalWrite(0);
      await this.delay(this.logicDelay);
      //this.delay(2);
      dat1 = dat1 << 1 | this.dio.digitalRead();
    }
    var dat2 = 0;
    for (var i = 0; i < 8; i++) {
      dat2 = dat2 | this.dio.digitalRead() << i;
      this.clk.digitalWrite(1);
      await this.delay(this.logicDelay);
      //this.delay(2);
      this.clk.digitalWrite(0);
      await this.delay(this.logicDelay);
      //this.delay(2);
    }

    this.cs.digitalWrite(1);
    this.dio.mode(Gpio.OUTPUT);

    if (dat1 == dat2) {
      return dat1;
    } //else {
      //throw `Receive data validation error: dat1: ${dat1}, dat2: ${dat2}`;
    //}
  }
}

exports.ADC0834 = ADC0834;
