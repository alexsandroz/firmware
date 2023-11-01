ifeq ($(KSRC),)
ARCH=arm 
KSRC=/home/alex/firmware/output/build/linux-custom 
CROSS_COMPILE=/home/alex/firmware/output/per-package/hi3881/host/bin/arm-openipc-linux-musleabi- 
PWD=/home/alex/firmware/output/build/hi3881
M=/home/alex/firmware/output/build/hi3881
endif

obj-m += hi3881.o

hi3881-objs += src/hi3881.o

EXTRA_CFLAGS +=

modules:
	$(MAKE) -C $(KSRC) M=$(PWD) modules

clean:
	$(MAKE) -C $(KSRC) M=$(PWD) clean