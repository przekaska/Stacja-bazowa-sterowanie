#include <zephyr/kernel.h>
#include <zephyr/device.h>
#include <zephyr/devicetree.h>
#include <zephyr/drivers/i2c.h>
#include <zephyr/sys/printk.h>
#include <zephyr/console/console.h>
#include <zephyr/logging/log.h>
#include <zephyr/bluetooth/bluetooth.h>
#include <zephyr/bluetooth/gap.h>

#define SLEEP_TIME_MS   1000
#define MCP23018_I2C_ADDR 0x20
#define MCP23018_IODIRA 0x00
#define MCP23018_IODIRB 0x01
#define MCP23018_IODIR_VAL 0x00
#define MCP23018_IOCON  0x00
#define MCP23018_I2C_OLATA_ADDR 0x14 
#define MCP23018_I2C_OLATB_ADDR 0x15
#define MCP23018_I2C_GPPUA_ADDR 0x0C
#define MCP23018_I2C_GPPUB_ADDR 0x0D

#define DEVICE_NAME CONFIG_BT_DEVICE_NAME
#define DEVICE_NAME_LEN (sizeof(DEVICE_NAME)-1)

#define I2C1_NODE DT_NODELABEL(antena)

LOG_MODULE_REGISTER(Bluetooth_ESPAR, LOG_LEVEL_DBG);

static const struct i2c_dt_spec dev_i2c = I2C_DT_SPEC_GET(I2C1_NODE);

static const struct bt_data ad[] =
{
    BT_DATA_BYTES(BT_DATA_FLAGS, BT_LE_AD_NO_BREDR),
    BT_DATA(BT_DATA_NAME_COMPLETE, DEVICE_NAME, DEVICE_NAME_LEN),
};

static unsigned char url_data[] = { 0x17, '/', '/', 'a', 'c', 'a', 'd', 'e', 'm',
				    'y',  '.', 'n', 'o', 'r', 'd', 'i', 'c', 's',
				    'e',  'm', 'i', '.', 'c', 'o', 'm' };

/* STEP 4.2.1 - Declare the scan response packet */
static const struct bt_data sd[] = {
	/* 4.2.3 Include the URL data in the scan response packet */
	BT_DATA(BT_DATA_URI, url_data, sizeof(url_data)),
};


void mcp23018_write_reg(uint8_t reg, uint8_t value)
{
    uint8_t buf[2] = {reg, value};
    i2c_write_dt(&dev_i2c, buf, sizeof(buf));
}

void mcp23018_init(void)
{
    mcp23018_write_reg(MCP23018_IODIRA, 0x00);
    mcp23018_write_reg(MCP23018_IODIRB, 0x00);
    mcp23018_write_reg(MCP23018_I2C_OLATA_ADDR, 0x00);
    mcp23018_write_reg(MCP23018_I2C_OLATB_ADDR, 0x00);
	mcp23018_write_reg(MCP23018_I2C_GPPUA_ADDR, 0xFF);
	mcp23018_write_reg(MCP23018_I2C_GPPUB_ADDR, 0xFF);
}

void update_outputs(uint16_t state)
{
    mcp23018_write_reg(MCP23018_I2C_OLATB_ADDR, state & 0xFF);
    mcp23018_write_reg(MCP23018_I2C_OLATA_ADDR, (state >> 8) & 0xFF);
}

int main(void)
{
    if (!device_is_ready(dev_i2c.bus)) {
        printk("I2C bus %s is not ready!\n", dev_i2c.bus->name);
        return -1;
    }

    mcp23018_init();
    
    if (console_init() < 0) {
        printk("Error initializing the console.\n");
        return -1;
    }

    uint16_t output_state = 0;

    int err;
    err = bt_enable(NULL);
    if (err)
    {
        LOG_ERR("Bluetooth init failed (err %d)\n",err);
        return -1;
    }
    LOG_INF("Bluetooth initialized\n");
    
    err = bt_le_adv_start(BT_LE_ADV_NCONN, ad, ARRAY_SIZE(ad),
			      sd, ARRAY_SIZE(sd));
	if (err) {
		LOG_ERR("Advertising failed to start (err %d)\n", err);
		return -1;
	}
    LOG_INF("Advertising successfully started\n");

    
    while (1) {
        printk("Wybierz numer pinu (1-9,a,b,c) do przelaczenia lub 'q' aby zakonczyc: ");
		//int pin = 0;
        char input = console_getchar();
        //scanf("%d",&pin);
        if (input == 'q') {
            break;
        }
        if (input == 'a'){input = input -39;}
        if (input == 'b'){input = input -39;}
        if (input == 'c'){input = input -39;}
        
        int pin = input - '0' - 1;
		if (pin >=6){ pin=pin+2;};
        if (pin >= 0 && pin <= 15) {
            output_state ^= (1 << pin);
            update_outputs(output_state);
            printk("Stan wyjsc: 0x%04X\n", output_state);
        } else {
            printk("Nieprawidlowy wybor. Sprobuj ponownie.\n");
        }
    }
}