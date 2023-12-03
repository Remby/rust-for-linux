# qemu-system-x86_64 -smp 2 -m 512M -kernel /home/rembly/code/linux/build/arch/x86_64/boot/bzImage -initrd initramfs.cpio.gz -netdev user,id=eth0 -device e1000,netdev=eth0 -nographic -append "init=/init console=ttyS0"

qemu-system-x86_64 \
-kernel /home/rembly/Desktop/linux-nullblk/build/arch/x86/boot/bzImage \
-append "init=/init console=ttyS0" \
-nographic \
-initrd initramfs.cpio.gz