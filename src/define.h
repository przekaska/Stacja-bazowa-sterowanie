#define SLEEP_TIME_MS   1000 	// 1000 msec = 1 sec / for auto switch
#define SLEEP_TIME_MS_BUTTON 10*60*1000 // = 10min / wait time for button press

#define MCP23018_I2C_ADDR	0x20	//Assumed address of expander - 0V on pin ADDR 
#define MCP23018_IODIRA	0x00 		//Address of register to set direction on bank A
#define MCP23018_IODIRB	0x01 		//Address of register to set direction on bank B
#define MCP23018_IODIR_VAL	0x00 	//Setting every pin to output direction

#define MCP23018_IOCON 0x00		//Not used - it is as default 

// When IOCON.BANK = 0 - by default
//#define MCP23018_I2C_GPIOA_ADDR 0x12	//Not used
//#define MCP23018_I2C_GPIOB_ADDR 0x13	//Not used
#define MCP23018_I2C_OLATA_ADDR 0x14 
#define MCP23018_I2C_OLATB_ADDR 0x15

#define MCP23018_I2C_GPPUA_ADDR 0x0C	
#define MCP23018_I2C_GPPUB_ADDR 0x0D
//
/* STEP 5 - Get the label of the I2C controller connected to your sensor */
