obj-m := e1000_for_linux.o

PWD := $(shell pwd)
ARCH ?= arm64
KDIR ?= /home/rembly/code/linux/build-arm64

default:
	@[ -e ../Makefile ] || ln -s linux/Makefile ../
	$(MAKE) ARCH=$(ARCH) LLVM=1 -C $(KDIR) M=$(PWD)/../ modules
clean:
	$(MAKE) ARCH=$(ARCH) LLVM=1 -C $(KDIR) M=$(PWD)/../ clean
	@[ -e ../Makefile ] && rm ../Makefile
