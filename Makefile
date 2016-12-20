ifneq ($(KERNELRELEASE),)
obj-m := hello.o
else
KDIR := ~/embedded-linux-labs/tinysystem/linux-stable

all:
	$(MAKE) -C $(KDIR) M=$$PWD
endif
