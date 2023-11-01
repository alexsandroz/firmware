#BOARD=hi3516ev300_ultimate  make br-linux-{dirclean,rebuild}
#BOARD=hi3516ev300_ultimate  make br-rootfs-{squashfs,tar}
#BOARD=hi3516ev300_ultimate  make br-vtund-openipc-{dirclean,rebuild}

#BOARD=hi3516ev300_ultimate  make br-autonight-rebuild
rm -rf /home/alex/firmware/output/build/hi3881
BOARD=hi3516ev300_ultimate  make br-hi3881-rebuild
