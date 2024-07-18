#include <zephyr.h>
#include <device.h>
#include <devicetree.h>
#include <drivers/i2c.h>	//header file of the I2C API
#include <sys/printk.h>		//header for printing in console
#include <drivers/gpio.h>	//header for GPIO/buttons
#include "define.h"			//all of constant definitions

#define I2C1_NODE DT_NODELABEL(i2c1)

#if DT_NODE_HAS_STATUS(I2C1_NODE, okay)
#define I2C1 DT_LABEL(I2C1_NODE)
#else
#error "I2C0 devicetree node is disabled"
#define I2C1 ""
#endif

/* The devicetree node indentifire for the "sw0" alias*/
#define SW0_NODE    DT_ALIAS(sw0)

#if DT_NODE_HAS_STATUS(SW0_NODE, okay)
#define SW0_GPIO_LABEL  DT_GPIO_LABEL(SW0_NODE, gpios)
#define SW0_GPIO_PIN    DT_GPIO_PIN(SW0_NODE, gpios)
#define SW0_GPIO_FLAGS  DT_GPIO_FLAGS(SW0_NODE, gpios)
#else
#error "Unsupported board: sw0 devicetree alias is not defined"
#define SW0_GPIO_LABEL  ""
#define SW0_GPIO_PIN    0
#define SW0_GPIO_FLAGS  0
#endif
/* The devicetree node indentifire for the "sw1" alias*/
#define SW1_NODE    DT_ALIAS(sw1)

#if DT_NODE_HAS_STATUS(SW1_NODE, okay)
#define SW1_GPIO_LABEL  DT_GPIO_LABEL(SW1_NODE, gpios)
#define SW1_GPIO_PIN    DT_GPIO_PIN(SW1_NODE, gpios)
#define SW1_GPIO_FLAGS  DT_GPIO_FLAGS(SW1_NODE, gpios)
#else
#error "Unsupported board: sw0 devicetree alias is not defined"
#define SW1_GPIO_LABEL  ""
#define SW1_GPIO_PIN    0
#define SW1_GPIO_FLAGS  0
#endif
/* The devicetree node identifier for the "led0" alias. */
#define LED0_NODE DT_ALIAS(led0)

#if DT_NODE_HAS_STATUS(LED0_NODE, okay)
#define LED0	DT_GPIO_LABEL(LED0_NODE, gpios)
#define PIN		DT_GPIO_PIN(LED0_NODE, gpios)
#define FLAGS	DT_GPIO_FLAGS(LED0_NODE, gpios)
#else
/* A build error here means your board isn't set up to blink an LED. */
#error "Unsupported board: led0 devicetree alias is not defined"
#define LED0	""
#define PIN		0
#define FLAGS	0
#endif

#define LED1_NODE DT_ALIAS(led1)


#if DT_NODE_HAS_STATUS(LED1_NODE, okay)
#define LED1	DT_GPIO_LABEL(LED1_NODE, gpios)
#define PIN1	DT_GPIO_PIN(LED1_NODE, gpios)
#define FLAGS1	DT_GPIO_FLAGS(LED1_NODE, gpios)
#else
/* A build error here means your board isn't set up to blink an LED. */
#error "Unsupported board: led1 devicetree alias is not defined"
#define LED1	""
#define PIN1	0
#define FLAGS1	0
#endif
int i = 1;

void button_pressed1(const struct device *dev, struct gpio_callback *cb,
		    uint32_t pins)
{
	gpio_pin_toggle(dev,PIN);
	i = i+1;
}

void button_pressed2(const struct device *dev2, struct gpio_callback *cb,
		    uint32_t pins)
{
	gpio_pin_toggle(dev2,PIN1);
	i = i-1;
}
/* Define a variable of type static struct gpio_callback */
static struct gpio_callback button_cb_data;
static struct gpio_callback button_cb_data2;


void main(void)
{
	int ret;
	uint8_t antena_setting[2];
	
	const struct device *dev;
	const struct device *dev2;

	dev = device_get_binding(LED0);
	if (dev == NULL) {
		return;
	}
	dev2 = device_get_binding(LED1);
	if (dev2 == NULL) {
		return;
	}

	ret = gpio_pin_configure(dev, PIN, GPIO_OUTPUT_ACTIVE | FLAGS);
	if (ret < 0) {
		return;
	}

	ret = gpio_pin_configure(dev, SW0_GPIO_PIN, GPIO_INPUT | SW0_GPIO_FLAGS);
    if (ret < 0) {
        return;
    }

	ret = gpio_pin_configure(dev2, PIN1, GPIO_OUTPUT_ACTIVE | FLAGS1);
	if (ret < 0) {
		return;
	}

	ret = gpio_pin_configure(dev2, SW1_GPIO_PIN, GPIO_INPUT | SW1_GPIO_FLAGS);
    if (ret < 0) {
        return;
    }

	ret = gpio_pin_interrupt_configure(dev,SW0_GPIO_PIN,GPIO_INT_EDGE_TO_ACTIVE | GPIO_INT_DEBOUNCE);	
	/* STEP 6 - Initialize the static struct gpio_callback variable   */
	gpio_init_callback(&button_cb_data, button_pressed1, BIT(SW0_GPIO_PIN));	
	/* STEP 7 - Add the callback function by calling gpio_add_callback()   */
	gpio_add_callback(dev, &button_cb_data);	
	
	ret = gpio_pin_interrupt_configure(dev,SW1_GPIO_PIN,GPIO_INT_EDGE_TO_ACTIVE | GPIO_INT_DEBOUNCE);	
	/* STEP 6 - Initialize the static struct gpio_callback variable   */
	gpio_init_callback(&button_cb_data2, button_pressed2, BIT(SW1_GPIO_PIN));	
	/* STEP 7 - Add the callback function by calling gpio_add_callback()   */
	gpio_add_callback(dev2, &button_cb_data2);

	/*Get the binding of the I2C driver  */
	const struct device *dev_i2c = device_get_binding(I2C1);
	if (dev_i2c == NULL) {
		printk("Could not find  %s!\n\r",I2C1);
		return;
	}
	
	//set output bank A
	antena_setting[0] = MCP23018_IODIRA;
	antena_setting[1] = MCP23018_IODIR_VAL; 
	ret = i2c_write(dev_i2c, antena_setting, sizeof(antena_setting),MCP23018_I2C_ADDR);
	if(ret != 0){
		printk("Failed to write input on bank A to I2C device address %x at Reg. %x \n", MCP23018_I2C_ADDR,antena_setting[0]);
	}
	//set output bank B
	antena_setting[0] = MCP23018_IODIRB;
	antena_setting[1] = MCP23018_IODIR_VAL; 
	ret = i2c_write(dev_i2c, antena_setting, sizeof(antena_setting),MCP23018_I2C_ADDR);
	if(ret != 0){
		printk("Failed to write input on bank A to I2C device address %x at Reg. %x \n", MCP23018_I2C_ADDR,antena_setting[0]);
	}

	k_msleep(1000);

	//pull-up GPPUA
	antena_setting[0] = MCP23018_I2C_GPPUA_ADDR;
	antena_setting[1] = 0xFF; 	//all pins with Pull-up resistors
	ret = i2c_write(dev_i2c, antena_setting, sizeof(antena_setting),MCP23018_I2C_ADDR);
	if(ret != 0){
		printk("Failed to write input on bank A to I2C device address %x at Reg. %x \n", MCP23018_I2C_ADDR,antena_setting[0]);
	}
	//pull-up GPPUB
	antena_setting[0] = MCP23018_I2C_GPPUB_ADDR;
	antena_setting[1] = 0xFF; 	//all pins with Pull-up resistors
	ret = i2c_write(dev_i2c, antena_setting, sizeof(antena_setting),MCP23018_I2C_ADDR);
	if(ret != 0){
		printk("Failed to write input on bank A to I2C device address %x at Reg. %x \n", MCP23018_I2C_ADDR,antena_setting[0]);
	}

	while (1)
	{
		switch (i)
			{
			case 1:
				antena_setting[0]= MCP23018_I2C_OLATA_ADDR;
				antena_setting[1]= 0x00;
				ret = i2c_write(dev_i2c, antena_setting, sizeof(antena_setting),MCP23018_I2C_ADDR);
				if(ret != 0){
					printk("Failed to write values to OLATA %x at Reg. %x \n", MCP23018_I2C_ADDR,antena_setting[0]);
				}
				antena_setting[0]= MCP23018_I2C_OLATB_ADDR;
				antena_setting[1]= 0x1F;
				ret = i2c_write(dev_i2c, antena_setting, sizeof(antena_setting),MCP23018_I2C_ADDR);
				if(ret != 0){
					printk("Failed to write values to OLATB %x at Reg. %x \n", MCP23018_I2C_ADDR,antena_setting[0]);
				}
				printk("{D, D, D, D, D, R, R, R, R, R, R, R}, // Characteristic  1 \n");
				break;
			case 2:
				antena_setting[0]= MCP23018_I2C_OLATA_ADDR;
				antena_setting[1]= 0x00;
				ret = i2c_write(dev_i2c, antena_setting, sizeof(antena_setting),MCP23018_I2C_ADDR);
				if(ret != 0){
					printk("Failed to write values to OLATA %x at Reg. %x \n", MCP23018_I2C_ADDR,antena_setting[0]);
				}
				antena_setting[0]= MCP23018_I2C_OLATB_ADDR;
				antena_setting[1]= 0x3E;
				ret = i2c_write(dev_i2c, antena_setting, sizeof(antena_setting),MCP23018_I2C_ADDR);
				if(ret != 0){
					printk("Failed to write values to OLATB %x at Reg. %x \n", MCP23018_I2C_ADDR,antena_setting[0]);
				}
				printk("{R, D, D, D, D, D, R, R, R, R, R, R}, // Characteristic  2 \n");
				break;
			case 3:
				antena_setting[0]= MCP23018_I2C_OLATA_ADDR;
				antena_setting[1]= 0x01;
				ret = i2c_write(dev_i2c, antena_setting, sizeof(antena_setting),MCP23018_I2C_ADDR);
				if(ret != 0){
					printk("Failed to write values to OLATA %x at Reg. %x \n", MCP23018_I2C_ADDR,antena_setting[0]);
				}
				antena_setting[0]= MCP23018_I2C_OLATB_ADDR;
				antena_setting[1]= 0x3C;
				ret = i2c_write(dev_i2c, antena_setting, sizeof(antena_setting),MCP23018_I2C_ADDR);
				if(ret != 0){
					printk("Failed to write values to OLATB %x at Reg. %x \n", MCP23018_I2C_ADDR,antena_setting[0]);
				}
				printk("{R, R, D, D, D, D, D, R, R, R, R, R}, // Characteristic  3\n");
				
				break;
			case 4:
				antena_setting[0]= MCP23018_I2C_OLATA_ADDR;
				antena_setting[1]= 0x03;
				ret = i2c_write(dev_i2c, antena_setting, sizeof(antena_setting),MCP23018_I2C_ADDR);
				if(ret != 0){
					printk("Failed to write values to OLATA %x at Reg. %x \n", MCP23018_I2C_ADDR,antena_setting[0]);
				}
				antena_setting[0]= MCP23018_I2C_OLATB_ADDR;
				antena_setting[1]= 0x38;
				ret = i2c_write(dev_i2c, antena_setting, sizeof(antena_setting),MCP23018_I2C_ADDR);
				if(ret != 0){
					printk("Failed to write values to OLATB %x at Reg. %x \n", MCP23018_I2C_ADDR,antena_setting[0]);
				}
				printk("{R, R, R, D, D, D, D, D, R, R, R, R}, // Characteristic  4\n");
				
				break;
			case 5:
				antena_setting[0]= MCP23018_I2C_OLATA_ADDR;
				antena_setting[1]= 0x07;
				ret = i2c_write(dev_i2c, antena_setting, sizeof(antena_setting),MCP23018_I2C_ADDR);
				if(ret != 0){
					printk("Failed to write values to OLATA %x at Reg. %x \n", MCP23018_I2C_ADDR,antena_setting[0]);
				}
				antena_setting[0]= MCP23018_I2C_OLATB_ADDR;
				antena_setting[1]= 0x30;
				ret = i2c_write(dev_i2c, antena_setting, sizeof(antena_setting),MCP23018_I2C_ADDR);
				if(ret != 0){
					printk("Failed to write values to OLATB %x at Reg. %x \n", MCP23018_I2C_ADDR,antena_setting[0]);
				}
				printk("{R, R, R, R, D, D, D, D, D, R, R, R}, // Characteristic  5\n");
				
				break;
			case 6:
				antena_setting[0]= MCP23018_I2C_OLATA_ADDR;
				antena_setting[1]= 0x0F;
				ret = i2c_write(dev_i2c, antena_setting, sizeof(antena_setting),MCP23018_I2C_ADDR);
				if(ret != 0){
					printk("Failed to write values to OLATA %x at Reg. %x \n", MCP23018_I2C_ADDR,antena_setting[0]);
				}
				antena_setting[0]= MCP23018_I2C_OLATB_ADDR;
				antena_setting[1]= 0x20;
				ret = i2c_write(dev_i2c, antena_setting, sizeof(antena_setting),MCP23018_I2C_ADDR);
				if(ret != 0){
					printk("Failed to write values to OLATB %x at Reg. %x \n", MCP23018_I2C_ADDR,antena_setting[0]);
				}
				printk("{R, R, R, R, R, D, D, D, D, D, R, R}, // Characteristic  6\n");
				
				break;
			case 7:
				antena_setting[0]= MCP23018_I2C_OLATA_ADDR;
				antena_setting[1]= 0x1F;
				ret = i2c_write(dev_i2c, antena_setting, sizeof(antena_setting),MCP23018_I2C_ADDR);
				if(ret != 0){
					printk("Failed to write values to OLATA %x at Reg. %x \n", MCP23018_I2C_ADDR,antena_setting[0]);
				}
				antena_setting[0]= MCP23018_I2C_OLATB_ADDR;
				antena_setting[1]= 0x00;
				ret = i2c_write(dev_i2c, antena_setting, sizeof(antena_setting),MCP23018_I2C_ADDR);
				if(ret != 0){
					printk("Failed to write values to OLATB %x at Reg. %x \n", MCP23018_I2C_ADDR,antena_setting[0]);
				}
				printk("{R, R, R, R, R, R, D, D, D, D, D, R}, // Characteristic  7\n");
				
				break;
			case 8:
				antena_setting[0]= MCP23018_I2C_OLATA_ADDR;
				antena_setting[1]= 0x3E;
				ret = i2c_write(dev_i2c, antena_setting, sizeof(antena_setting),MCP23018_I2C_ADDR);
				if(ret != 0){
					printk("Failed to write values to OLATA %x at Reg. %x \n", MCP23018_I2C_ADDR,antena_setting[0]);
				}
				antena_setting[0]= MCP23018_I2C_OLATB_ADDR;
				antena_setting[1]= 0x00;
				ret = i2c_write(dev_i2c, antena_setting, sizeof(antena_setting),MCP23018_I2C_ADDR);
				if(ret != 0){
					printk("Failed to write values to OLATB %x at Reg. %x \n", MCP23018_I2C_ADDR,antena_setting[0]);
				}
				printk("{R, R, R, R, R, R, R, D, D, D, D, D}, // Characteristic  8\n");
				
				break;
			case 9:
				antena_setting[0]= MCP23018_I2C_OLATA_ADDR;
				antena_setting[1]= 0x3C;
				ret = i2c_write(dev_i2c, antena_setting, sizeof(antena_setting),MCP23018_I2C_ADDR);
				if(ret != 0){
					printk("Failed to write values to OLATA %x at Reg. %x \n", MCP23018_I2C_ADDR,antena_setting[0]);
				}
				antena_setting[0]= MCP23018_I2C_OLATB_ADDR;
				antena_setting[1]= 0x01;
				ret = i2c_write(dev_i2c, antena_setting, sizeof(antena_setting),MCP23018_I2C_ADDR);
				if(ret != 0){
					printk("Failed to write values to OLATB %x at Reg. %x \n", MCP23018_I2C_ADDR,antena_setting[0]);
				}
				printk("{D, R, R, R, R, R, R, R, D, D, D, D}, // Characteristic  9\n");
				
				break;
			case 10:
				antena_setting[0]= MCP23018_I2C_OLATA_ADDR;
				antena_setting[1]= 0x38;
				ret = i2c_write(dev_i2c, antena_setting, sizeof(antena_setting),MCP23018_I2C_ADDR);
				if(ret != 0){
					printk("Failed to write values to OLATA %x at Reg. %x \n", MCP23018_I2C_ADDR,antena_setting[0]);
				}
				antena_setting[0]= MCP23018_I2C_OLATB_ADDR;
				antena_setting[1]= 0x03;
				ret = i2c_write(dev_i2c, antena_setting, sizeof(antena_setting),MCP23018_I2C_ADDR);
				if(ret != 0){
					printk("Failed to write values to OLATB %x at Reg. %x \n", MCP23018_I2C_ADDR,antena_setting[0]);
				}
				printk("{D, D, R, R, R, R, R, R, R, D, D, D}, // Characteristic 10\n");
				
				break;
			case 11:
				antena_setting[0]= MCP23018_I2C_OLATA_ADDR;
				antena_setting[1]= 0x30;
				ret = i2c_write(dev_i2c, antena_setting, sizeof(antena_setting),MCP23018_I2C_ADDR);
				if(ret != 0){
					printk("Failed to write values to OLATA %x at Reg. %x \n", MCP23018_I2C_ADDR,antena_setting[0]);
				}
				antena_setting[0]= MCP23018_I2C_OLATB_ADDR;
				antena_setting[1]= 0x07;
				ret = i2c_write(dev_i2c, antena_setting, sizeof(antena_setting),MCP23018_I2C_ADDR);
				if(ret != 0){
					printk("Failed to write values to OLATB %x at Reg. %x \n", MCP23018_I2C_ADDR,antena_setting[0]);
				}
				printk("{D, D, D, R, R, R, R, R, R, R, D, D}, // Characteristic 11\n");
				
				break;
			case 12:
				antena_setting[0]= MCP23018_I2C_OLATA_ADDR;
				antena_setting[1]= 0x20;
				ret = i2c_write(dev_i2c, antena_setting, sizeof(antena_setting),MCP23018_I2C_ADDR);
				if(ret != 0){
					printk("Failed to write values to OLATA %x at Reg. %x \n", MCP23018_I2C_ADDR,antena_setting[0]);
				}
				antena_setting[0]= MCP23018_I2C_OLATB_ADDR;
				antena_setting[1]= 0x0F;
				ret = i2c_write(dev_i2c, antena_setting, sizeof(antena_setting),MCP23018_I2C_ADDR);
				if(ret != 0){
					printk("Failed to write values to OLATB %x at Reg. %x \n", MCP23018_I2C_ADDR,antena_setting[0]);
				}
				printk("{D, D, D, D, R, R, R, R, R, R, R, D}, // Characteristic 12 \n");

				break;
			
			default:
				printk("error out of bounds: %x\n",i);
				break;
			}

		//fragment wypisujący aktualną wartość na bankach

		uint8_t GPIOs_regs[2] ={MCP23018_I2C_OLATA_ADDR,MCP23018_I2C_OLATB_ADDR};
		uint8_t val_reading[2]= {0};	
		ret = i2c_write_read(dev_i2c,MCP23018_I2C_ADDR,&GPIOs_regs[0],1,&val_reading[0],1);
		if(ret != 0){
			printk("Failed to write/read I2C device address %x at Reg. %x \n", MCP23018_I2C_ADDR,GPIOs_regs[0]);
		}
		ret = i2c_write_read(dev_i2c,MCP23018_I2C_ADDR,&GPIOs_regs[1],1,&val_reading[1],1);
		if(ret != 0){
			printk("Failed to write/read I2C device address %x at Reg. %x \n", MCP23018_I2C_ADDR,GPIOs_regs[1]);
		}
		printk("Zapisane bank A = %x \n", val_reading[1]);
		printk("Zapisane bank B = %x \n\n", val_reading[0]);
		k_msleep(SLEEP_TIME_MS);
		if (i>12){
			i=1;
		}
		if (i<=0){
			i=12;
		}
	}

}

// ## Pre-defined characteristics - plik excel 
// ### Standard ESPAR 
// ```
//     {D, D, D, D, D, R, R, R, R, R, R, R}, // Characteristic  1 
//     {R, D, D, D, D, D, R, R, R, R, R, R}, // Characteristic  2
//     {R, R, D, D, D, D, D, R, R, R, R, R}, // Characteristic  3
//     {R, R, R, D, D, D, D, D, R, R, R, R}, // Characteristic  4
//     {R, R, R, R, D, D, D, D, D, R, R, R}, // Characteristic  5
//     {R, R, R, R, R, D, D, D, D, D, R, R}, // Characteristic  6
//     {R, R, R, R, R, R, D, D, D, D, D, R}, // Characteristic  7
//     {R, R, R, R, R, R, R, D, D, D, D, D}, // Characteristic  8
//     {D, R, R, R, R, R, R, R, D, D, D, D}, // Characteristic  9
//     {D, D, R, R, R, R, R, R, R, D, D, D}, // Characteristic 10
//     {D, D, D, R, R, R, R, R, R, R, D, D}, // Characteristic 11
//     {D, D, D, D, R, R, R, R, R, R, R, D}, // Characteristic 12
// ``` 