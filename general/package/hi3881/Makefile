obj-m += hi3881.o

hi3881-objs += src/hi3881.o

EXTRA_CFLAGS +=

modules:
	$(MAKE) -C $(KSRC) M=$(PWD) modules

clean:
	$(MAKE) -C $(KSRC) M=$(PWD) clean