CC:=$(CROSS_COMPILE)gcc

CFLAGS = -O

#SCRIPTS=i2c-cirrus-dump.sh i2c-cirrus-setup.sh i2c-lfp100-dump.sh i2c-hi253-dump.sh \
i2c-hi253-load.sh i2c-hi253-dump-lf3k.sh i2c-hi253-load-lf3k.sh i2c-bq24250-dump.sh \
scan-i2c.sh

#BIN_PATH=$(ROOTFS_PATH)/usr/bin

i2c-ctl: i2c-ctl.c i2c.h i2c-dev.h
	$(CC) $(CFLAGS) -o i2c-ctl i2c-ctl.c

#install: i2c-ctl
#	install -d $(BIN_PATH)
#	install -m 755 i2c-ctl $(SCRIPTS) $(BIN_PATH)

clean:
	rm -f *.o i2c-ctl

