CFLAGS = -static -O3 -march=armv7-a -mtune=cortex-a9 -mfpu=neon -mfloat-abi=hard -D_GNU_SOURCE

all: sdr-transceiver-hpsdr-orochi sdr-transceiver-hpsdr-orochi-ananxd

sdr-transceiver-hpsdr-orochi: sdr-transceiver-hpsdr-orochi.c
	arm-linux-gnueabihf-gcc $(CFLAGS) -o $@ $^ -lm -lpthread

sdr-transceiver-hpsdr-orochi-ananxd: sdr-transceiver-hpsdr-orochi.c
	arm-linux-gnueabihf-gcc $(CFLAGS) -DANANXD -o $@ $^ -lm -lpthread

clean:
	rm -f sdr-transceiver-hpsdr-orochi sdr-transceiver-hpsdr-orochi-ananxd
