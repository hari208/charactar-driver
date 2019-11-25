obj-m += simpserial.o

all:
	make -C /lib/modules/$(shell uname -r)/build M=$(shell pwd) modules
#	make -C /lib/modules/$(shell uname -r)/build M=$(shell pwd) modules
#	make -C /usr/src/linux-headers-4.15.0-45-generic SUBDIRS=`pwd` modules
	gcc -o devread devread.c
	gcc -o devwrite devwrite.c
	gcc -o devtest devtest.c

clean:
	rm -f *.o *.ko *.mod.c
	rm -f devread devwrite devtest
