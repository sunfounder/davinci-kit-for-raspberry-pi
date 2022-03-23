var gyro = require("mpu6050-gyro");
 
var address = 0x68; //MPU6050 address
var bus = 1; //i2c bus used
 
var gyro = new gyro( bus,address );
 
async function update_telemetry() {
    
    var gyro_xyz = gyro.get_gyro_xyz();
    var accel_xyz = gyro.get_accel_xyz();
    
    var gyro_data = {
        gyro_xyz: gyro_xyz,
        accel_xyz: accel_xyz,
        rollpitch: gyro.get_roll_pitch( gyro_xyz, accel_xyz )
    }
    
    console.log(gyro_data);
    
    setTimeout(update_telemetry, 500);
}
 
if ( gyro ) {
    update_telemetry();
}