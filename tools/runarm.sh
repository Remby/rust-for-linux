# qemu-system-x86_64 -smp 2 -m 512M -kernel /home/rembly/code/linux/build/arch/x86_64/boot/bzImage -initrd initramfs.cpio.gz -netdev user,id=eth0 -device e1000,netdev=eth0 -nographic -append "init=/init console=ttyS0"

# qemu-system-aarch64 -M virt -cpu cortex-a72 -smp 8 -m 128M \
# -kernel /home/rembly/code/linux/build-arm64/arch/arm64/boot/Image -initrd /home/rembly/code/dqib_arm64-virt/initrd \
# -nographic -append "init=/init console=ttyAMA0" \
# -device e1000,netdev=net0,bus=pcie.0 -netdev user,id=net0 
# #!/bin/bash

qemu-system-aarch64 \
	-machine 'virt' \
	-cpu 'cortex-a57' \
	-m 1G \
	-device virtio-blk-device,drive=hd \
	-drive file=/home/rembly/code/dqib_arm64-virt/image.qcow2,if=none,id=hd \
    -kernel /home/rembly/code/linux/build-arm64/arch/arm64/boot/Image \
    -initrd /home/rembly/code/dqib_arm64-virt/initrd \
	-append "root=LABEL=rootfs console=ttyAMA0" \
    -nographic \
    -device e1000,netdev=net0 \
    -netdev user,id=net0 \